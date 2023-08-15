<?php

namespace App\Http\Controllers\Api\v1;

use App\Http\Controllers\Controller;
use App\Models\Project;
use Illuminate\Http\Request;
use Validator;

class ProjectController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $projects = Project::all();

        return response()->json([
            "success" => true,
            "message" => "Project List",
            "data" => $projects,
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

        $latestProjectId = Project::latest('id')->value('id');

        $latestProjectId++;

        $input['BAC_Value'] = 'BAC_' . $latestProjectId;
        $input['Project_Key'] = 'BAC_' . $latestProjectId;

        $validator = Validator::make($input, [
            'Project_Desc' => 'required',
            'Project_Allocation' => 'required',
            'Created_By' => 'required',
            // 'Date_Created' => 'required',
            'Project_Fund_Obligated' => 'required',
            'Project_Balance' => 'required',
        ]);

        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors());
        }

        $project = Project::create($input);

        return response()->json([
            "success" => true,
            "message" => "Project created successfully.",
            "data" => $project,
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
        $project = Project::find($id);

        if (is_null($project)) {
            return $this->sendError('Project not found.');
        }

        return response()->json([
            "success" => true,
            "message" => "Project retrieved successfully.",
            "data" => $project,
        ]);

    }

    public function update(Request $request, Project $project)
    {
        $input = $request->all();

        $validator = Validator::make($input, [
            'Project_Desc' => 'required',
            'Project_Allocation' => 'required',
            'Created_By' => 'required',
            // // 'Date_Created' => 'required',
            'Project_Fund_Obligated' => 'required',
            'Project_Balance' => 'required',
        ]);

        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());
        }

        $project->Project_Desc = $input['Project_Desc'];
        $project->Project_Allocation = $input['Project_Allocation'];
        $project->Created_By = $input['Created_By'];
        $project->Project_Fund_Obligated = $input['Project_Fund_Obligated'];
        $project->Project_Balance = $input['Project_Balance'];
        $project->save();

        return response()->json([
            "success" => true,
            "message" => "Project updated successfully.",
            "data" => $project
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Project $project)
    {
        $project->delete();

        return response()->json([
            "success" => true,
            "message" => "Project deleted successfully.",
            "data" => $project
        ]);
    }

}
