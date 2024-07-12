<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Admin\Category\CategoryCollection;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //return Category::orderBy('created_at','desc')->with('subCategory')->get();
        if ($request->wantsJson()) {
            $datas = Category::orderBy('created_at','desc')->with('subCategory');
            
            $search = $request->search['value'];
            if ($search) {
                $datas->where('slug', 'like', '%'.$search.'%');
                $datas->orWhere('name', 'like', '%'.$search.'%');
              
            }
            $request->merge(['recordsTotal' => $datas->count(), 'length' => $request->length]);
            $datas = $datas->limit($request->length)->offset($request->start)->get();
            return response()->json(new CategoryCollection($datas));
           
        }

        return view('admin.category.list');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request )
    {
        return view('admin.category.create');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, Employee $employee )
    {   
       
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
        public function store(Request $request) {

             $request->validate([
                'category_name' => [
                    'required',
                    Rule::unique('categories', 'name'),
                ],
            ]);

            $category = new Category;
            $category->name = $request->category_name;
            $category->parent = $request->parent_category;
            if($category->save()){ 
                return response()->json(['message'=>'Profile  Updated', 'class'=>'success', 'error'=>false]);
                return redirect()->route('admin.category.index')->with(['message'=>'Category Successfully Added','class'=>'success']);
            }
            return response()->json(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
            return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
        }
        
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, Category $category)
    {
        return response()->json(['message'=>'Data Found', 'class'=>'success', 'error'=>false, 'datas'=>$category]);
        return view('admin.category.edit',compact('category'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Category $category)
    {
        $this->validate($request,[
            'edit_category_name'=>'required',     
        ]);

        $category->name = $request->edit_category_name;
        $category->parent = $request->edit_parent_category;

        if($category->save()){ 
            return response()->json(['message'=>'Profile  Updated', 'class'=>'success', 'error'=>false]);
            return redirect()->route('admin.category.index')->with(['message'=>'Category Successfully Added','class'=>'success']);
        }
        return response()->json(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
        return redirect()->back()->with(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }


    public function updateParent(Request $request, $id)
    {
        $this->validate($request,[
            'parent_category'=>'required',     
            'child_category_id'=>'required',      
        ]);

        if(Category::where('id', $request->child_category_id)->update(['parent'=>$request->parent_category])){ 
            return response()->json(['message'=>'Category  Updated', 'class'=>'success', 'error'=>false]);
        }
        return response()->json(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }


    public function removeParent(Request $request, $id){

        if(Category::where('id', $id)->update(['parent'=>null])){ 
            return response()->json(['message'=>'Category  Updated', 'class'=>'success', 'error'=>false]);
        }
        return response()->json(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }


    public function parentList(Request $request){
        $categories = Category::all();
        if($categories->count()){ 
            return response()->json(['message'=>'Category  Updated', 'class'=>'success', 'error'=>false, 'datas'=>$categories]);
        }
        return response()->json(['class'=>'error','message'=>'Whoops, looks like something went wrong ! Try again ...']);
    }

    

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, Category $category)
    {
        Category::where('parent', $category->id)->update(['parent'=>null]);
        if($category->delete()){
            return response()->json(['message'=>'Category deleted Successfully ...', 'class'=>'success']);  
        }
        return response()->json(['message'=>'Whoops, looks like something went wrong ! Try again ...', 'class'=>'error']);
    }
}
