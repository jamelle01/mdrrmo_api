<?php

namespace App\Http\Controllers\Api\v1;

use App\Http\Controllers\Controller;
use App\Models\FundObligation;
use Illuminate\Http\Request;
use Validator;

class FundObligationController extends Controller
{
    //
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $fundObligations = FundObligation::all();

        return response()->json([
            "success" => true,
            "message" => "Fund Obligation List",
            "data" => $fundObligations,
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

        $latestFundObligationId = FundObligation::latest('id')->value('id');

        $latestFundObligationId++;

        $input['Fund_Obligation_Key'] = 'FO_' . $latestFundObligationId;
        // $input['Project_Key'] = 'FO_' . $latestFundObligationId;

        $validator = Validator::make($input, [
            'Project_Key' => 'required',
            'Obligation_Date' => 'required',
            'Fund_Obligated' => 'required',
        ]);

        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors());
        }

        $fundObligation = FundObligation::create($input);

        return response()->json([
            "success" => true,
            "message" => "Fund Obligation created successfully.",
            "data" => $fundObligation,
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
        $fundObligation = FundObligation::find($id);

        if (is_null($fundObligation)) {
            return $this->sendError('Fund Obligation not found.');
        }

        return response()->json([
            "success" => true,
            "message" => "Fund Obligation retrieved successfully.",
            "data" => $fundObligation,
        ]);

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, FundObligation $fundObligation)
    {
        $input = $request->all();

        $validator = Validator::make($input, [
            'Project_Key' => 'required',
            'Obligation_Date' => 'required',
            'Fund_Obligated' => 'required',
        ]);

        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors());
        }

        $fundObligation->Project_Key = $input['Project_Key'];
        $fundObligation->Obligation_Date = $input['Obligation_Date'];
        $fundObligation->Fund_Obligated = $input['Fund_Obligated'];
        $fundObligation->save();

        return response()->json([
            "success" => true,
            "message" => "Fund obligation updated successfully.",
            "data" => $fundObligation,
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(FundObligation $fundObligation)
    {
        $fundObligation->delete();

        return response()->json([
            "success" => true,
            "message" => "Fund Obligation deleted successfully.",
            "data" => $fundObligation,
        ]);
    }
}
