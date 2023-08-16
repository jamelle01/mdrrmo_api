<?php

namespace App\Http\Controllers\Api\v1;

use App\Http\Controllers\Controller;
use App\Models\Transaction;
use Illuminate\Http\Request;
use Validator;

class TransactionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $transactions = Transaction::all();

        return response()->json([
            "success" => true,
            "message" => "Transaction List",
            "data" => $transactions,
        ]);
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $input = $request->all();

        $latestTransactionId = Transaction::latest('id')->value('id');

        $latestTransactionId++;

        $input['TTN_Value'] = 'TTN_' . $latestTransactionId;
        $input['Transaction_Key'] = 'TTN_' . $latestTransactionId;

        $validator = Validator::make($input, [
            'Transaction_Subject' => 'required',
            'Transaction_Allocation' => 'required',
            'Created_By' => 'required',
            'Project_Key' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                "success" => false,
                "message" => "Transaction creation successfully.",
            ]);
        }

        $transaction = Transaction::create($input);

        return response()->json([
            "success" => true,
            "message" => "Transaction created successfully.",
            "data" => $transaction,
        ]);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $transaction = Transaction::find($id);

        if (is_null($transaction)) {
            return response()->json([
                "success" => false,
                "message" => "Product not found.",
            ]);
        }

        return response()->json([
            "success" => true,
            "message" => "Transaction retrieved successfully.",
            "data" => $transaction,
        ]);

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Transaction $transaction)
    {
        $input = $request->all();

        $validator = Validator::make($input, [
            'Transaction_Subject' => 'required',
            'Transaction_Allocation' => 'required',
            'Created_By' => 'required',
        ]);

        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors());
        }

        $transaction->Transaction_Subject = $input['Transaction_Subject'];
        $transaction->Transaction_Allocation = $input['Transaction_Allocation'];
        $transaction->Created_By = $input['Created_By'];
        $transaction->save();

        return response()->json([
            "success" => true,
            "message" => "Transaction updated successfully.",
            "data" => $transaction,
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Transaction $transaction)
    {
        $transaction->delete();

        return response()->json([
            "success" => true,
            "message" => "Transaction deleted successfully.",
            "data" => $transaction,
        ]);
    }

}
