<?php

use App\Http\Controllers\Admin\ActivitylogController;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\Auth\LoginController;
use App\Http\Controllers\Admin\BillingController;
use App\Http\Controllers\Admin\BreadController;
use App\Http\Controllers\Admin\CartonController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\ChemicalCoatingController;
use App\Http\Controllers\Admin\ClientController;
use App\Http\Controllers\Admin\CommonController;
use App\Http\Controllers\Admin\CuttingController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\DesigningController;
use App\Http\Controllers\Admin\DominantController;
use App\Http\Controllers\Admin\DyeCuttingController;
use App\Http\Controllers\Admin\DyeDetailsController;
use App\Http\Controllers\Admin\EmbossingController;
use App\Http\Controllers\Admin\ExcelController;
use App\Http\Controllers\Admin\IssueController;
use App\Http\Controllers\Admin\JobCardController;
use App\Http\Controllers\Admin\JobCardTimerController;
use App\Http\Controllers\Admin\LaminationController;
use App\Http\Controllers\Admin\LeafingController;
use App\Http\Controllers\Admin\MaterialInwardController;
use App\Http\Controllers\Admin\MaterialOrderController;
use App\Http\Controllers\Admin\MediaController;
use App\Http\Controllers\Admin\MenuController;
use App\Http\Controllers\Admin\ModuleUserController;
use App\Http\Controllers\Admin\PDFController;
use App\Http\Controllers\Admin\PaperInwardController;
use App\Http\Controllers\Admin\PaperWarehouseController;
use App\Http\Controllers\Admin\PastingController;
use App\Http\Controllers\Admin\PlanningController;
use App\Http\Controllers\Admin\PrintingController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\ProductTypeController;
use App\Http\Controllers\Admin\PurchaseOrderController;
use App\Http\Controllers\Admin\RequisitionController;
use App\Http\Controllers\Admin\RoleController;
use App\Http\Controllers\Admin\SiteSettingController;
use App\Http\Controllers\Admin\SpotUvController;
use App\Http\Controllers\Admin\TransactionController;
use App\Http\Controllers\Admin\UnitController;
use App\Http\Controllers\Admin\VendorController;
use App\Http\Controllers\Admin\WarehouseController;
use Illuminate\Support\Facades\Route;

Route::get('/', function() {
    //return "ok";
    return redirect()->route('admin.login.form');
    return view('admin.home');
});
Route::middleware('admin.guest')->name('admin.')->group(function() {
    Route::get('login', [LoginController::class, 'showLoginForm'])->name('login.form');
    Route::post('login', [LoginController::class, 'login'])->name('login.post');
 

    Route::get('password/reset', [LoginController::class, 'showLinkRequestForm'])->name('password.request');
    Route::post('password/email', [LoginController::class, 'sendResetLinkEmail']);

    Route::get('password/reset/{token}', [LoginController::class, 'showResetForm'])->name('password.reset');
    Route::post('password/reset', [LoginController::class, 'reset'])->name('password.request.sore');

    Route::get('new-password/{id}', [LoginController::class, 'newPasswordForm'])->name('password.newPassword');
    Route::post('password/set-password/{id}', [LoginController::class, 'sepPassword'])->name('password.setPassword');

   
});

Route::middleware('admin')->name('admin.')->group(function() {

    Route::get('logout', [LoginController::class, 'logout'])->name('logout');
    Route::get('dashboard', [DashboardController::class, 'index'])->name('dashboard.index')->middleware('can:browse_dashboard');
    Route::post('dashboard', [DashboardController::class, 'filter'])->name('dashboard.filter')->middleware('can:browse_dashboard');

    


    //Excell Download
    Route::controller(ExcelController::class)->prefix('download-excell')->name('excell-download.')->group(function(){
        Route::post('product-stock', 'productStock')->name('product-stock');  
        Route::post('product/ledger', 'productLedger')->name('product-ledger');  
        Route::post('purchase-order/carton/position', 'cartonPosition')->name('carton-position');  
    });


    //PDF Download
    Route::controller(PDFController::class)->prefix('download-pdf')->name('pdf-download.')->group(function(){
        Route::get('billing/{billings}', 'billing')->name('billing');  
    });



     //Common
     Route::controller(CommonController::class)->name('common.')->group(function(){
        Route::get('common/paper/quality', 'paperQuality')->name('paper.quality');
        Route::get('common/paper/type', 'paperType')->name('paper.type');
        Route::get('common/product/list', 'productList')->name('product.list');
        Route::post('common/product/single', 'productSingle')->name('product.single');
        Route::post('common/category/single', 'categorySingle')->name('category.single');
        Route::post('common/po/items', 'poItems')->name('po.items');

        Route::get('common/carton/dye-detail/list', 'dyeDetails')->name('dye-detail.list');

        Route::get('common/carton/name/list', 'cartonName')->name('carton.name.list');
        Route::get('common/carton/name/signgle/{carton_name}', 'cartonNameSigngle')->name('carton.name.single');

        Route::get('common/check/gst/{gst_number}', 'checkGST')->name('check.gst');

        Route::get('common/client/list', 'client')->name('client.list');
    });

    Route::controller(BreadController::class)->group(function(){
        Route::get('bread', 'index')->name('bread.index')->middleware('can:browse_bread');
        Route::get('bread/create', 'create')->name('bread.create')->middleware('can:add_bread');
        Route::get('bread/{slug}/edit', 'edit')->name('bread.edit')->middleware('can:edit_bread');
        Route::put('bread/{bread}/update', 'update')->name('bread.update')->middleware('can:edit_bread');
        Route::delete('bread/{slug}/delete', 'destroy')->name('bread.destroy')->middleware('can:delete_bread');
        Route::post('bread', 'store')->name('bread.store')->middleware('can:add_bread');
    });


    Route::controller(RoleController::class)->group(function(){
        Route::get('role', 'index')->name('role.index')->middleware('can:browse_role');
        Route::get('role/create', 'create')->name('role.create')->middleware('can:add_role');
        Route::get('role/{role}/edit', 'edit')->name('role.edit')->middleware('can:edit_role');
        Route::post('role', 'store')->name('role.store')->middleware('can:add_role');
        Route::put('role/{role}', 'update')->name('role.update')->middleware('can:edit_role');
        Route::delete('role/{slug}/delete', 'destroy')->name('role.destroy')->middleware('can:delete_role');
    });


    Route::controller(MenuController::class)->group(function(){
        Route::get('menu', 'index')->name('menu.index')->middleware('can:browse_menu');
        Route::get('menu/create', 'create')->name('menu.create')->middleware('can:add_menu');
        Route::get('menu/{menu}/edit', 'edit')->name('menu.edit')->middleware('can:edit_menu');
        Route::post('menu', 'store')->name('menu.store')->middleware('can:add_menu');
        Route::put('menu/{menu}', 'update')->name('menu.update')->middleware('can:edit_menu');
        Route::delete('menu/{menu}', 'destroy')->name('menu.destroy')->middleware('can:delete_menu');
    });


     //Admin
    Route::controller(AdminController::class)->group(function(){
        Route::match(['get','patch'],'admin', 'index')->name('admin.index')->middleware('can:browse_admin');
        Route::get('admin/create', 'create')->name('admin.create')->middleware('can:add_admin');
        Route::get('admin/{admin}', 'show')->name('admin.show')->middleware('can:read_admin');
        Route::get('admin/{admin}/edit', 'edit')->name('admin.edit')->middleware('can:edit_admin');
        Route::post('admin', 'store')->name('admin.store')->middleware('can:add_admin');
        Route::put('admin/{admin}', 'update')->name('admin.update')->middleware('can:edit_admin');
        Route::delete('admin/{admin}/delete', 'destroy')->name('admin.destroy')->middleware('can:delete_admin');

        Route::get('profile', 'profile')->name('profile');
        Route::put('profile/update', 'profileUpdate')->name('profile.update');
        Route::put('profile/photo/update/{admin}', 'profilePhotoUpdate')->name('profile.photo.update');
        Route::put('profile/cover/photo/update/{admin}', 'profileCoverPhotoUpdate')->name('profile.cover.photo.update');

        Route::get('change-password/{admin}', 'changePassword')->name('change-password');
        Route::put('update-password/{admin}', 'updatePassword')->name('update-password');
        Route::put('update-setting/{admin}', 'updateAetting')->name('update-setting');

    });

     //Site Setting
    Route::controller(SiteSettingController::class)->group(function(){
        Route::get('get-all-country', 'getAllCountry')->name('site-setting.country')->middleware('can:browse_site_setting');
        Route::get('site-setting', 'index')->name('site-setting.index')->middleware('can:browse_site_setting');
        Route::post('logo', 'logo')->name('site-setting.logo')->middleware('can:logo_site_setting');
    });


    //media
    Route::controller(MediaController::class)->group(function(){
        Route::match(['get','patch'],'media', 'index')->name('media.index')->middleware('can:browse_media');
        Route::get('media/create', 'create')->name('media.create')->middleware('can:add_media');
        Route::get('media/{media}', 'show')->name('media.show')->middleware('can:read_media');
        Route::get('media/{media}/edit', 'edit')->name('media.edit')->middleware('can:edit_media');
        Route::post('media', 'store')->name('media.store')->middleware('can:add_media');
        Route::put('media/{media}', 'update')->name('media.update')->middleware('can:edit_media');
        Route::delete('media/{media}/delete', 'destroy')->name('media.destroy')->middleware('can:delete_media');
        Route::get('media/get/multiple', 'getAllMediaMultiple')->name('media.get.multiple');
        Route::get('media/get/single', 'getAllMediaSingle')->name('media.get.single');
    });


    //client
    Route::controller(ClientController::class)->group(function(){
        Route::match(['get','patch'],'client', 'index')->name('client.index')->middleware('can:browse_client');
        Route::get('client/create', 'create')->name('client.create')->middleware('can:add_client');
        Route::get('client/{client}', 'show')->name('client.show')->middleware('can:read_client');
        Route::get('client/{client}/edit', 'edit')->name('client.edit')->middleware('can:edit_client');
        Route::post('client', 'store')->name('client.store')->middleware('can:add_client');
        Route::put('client/{client}', 'update')->name('client.update')->middleware('can:edit_client');
        Route::delete('client/{client}/delete', 'destroy')->name('client.destroy')->middleware('can:delete_client');
        Route::put('clients/change-status', 'changeStatus')->name('client.changeStatus')->middleware('can:change_status_client');
    });


    //activity-log
    Route::controller(ActivitylogController::class)->group(function(){
        Route::match(['get','patch'],'activity-log', 'index')->name('activity-log.index')->middleware('can:browse_activity_log');
        Route::get('activity-log/create', 'create')->name('activity-log.create')->middleware('can:add_activity_log');
        Route::get('activity-log/{id}', 'show')->name('activity-log.show')->middleware('can:read_activity_log');
        Route::get('activity-log/{id}/edit', 'edit')->name('activity-log.edit')->middleware('can:edit_activity_log');
        Route::post('activity-log', 'store')->name('activity-log.store')->middleware('can:add_activity_log');
        Route::put('activity-log/{id}', 'update')->name('activity-log.update')->middleware('can:edit_activity_log');
        Route::delete('activity-log/{activity-log}/delete', 'destroy')->name('activity-log.destroy')->middleware('can:delete_activity_log');
    });



    //DyeDetails
    Route::controller(DyeDetailsController::class)->group(function(){
        Route::match(['get','patch'],'dye-details', 'index')->name('dye-details.index')->middleware('can:browse_dye_details');
        Route::get('dye-details/create', 'create')->name('dye-details.create')->middleware('can:add_dye_details');
        Route::get('dye-details/{dye_details}', 'show')->name('dye-details.show')->middleware('can:read_dye_details');
        Route::get('dye-details/{dye_details}/edit', 'edit')->name('dye-details.edit')->middleware('can:edit_dye_details');
        Route::post('dye-details', 'store')->name('dye-details.store')->middleware('can:add_dye_details');
        Route::put('dye-details/{dye_details}', 'update')->name('dye-details.update')->middleware('can:edit_dye_details');
        Route::delete('dye-details/{dye_details}/delete', 'destroy')->name('dye-details.destroy')->middleware('can:delete_dye_details');
    });


    //vendor
    Route::controller(VendorController::class)->group(function(){
        Route::get('vendor', 'index')->name('vendor.index')->middleware('can:browse_vendor');
        Route::get('vendor/create', 'create')->name('vendor.create')->middleware('can:add_vendor');
        Route::get('vendor/{vendor}/edit', 'edit')->name('vendor.edit')->middleware('can:edit_vendor');
        Route::post('vendor', 'store')->name('vendor.store')->middleware('can:add_vendor');
        Route::put('vendor/{vendor}', 'update')->name('vendor.update')->middleware('can:edit_vendor');
        Route::delete('vendor/{vendor}/delete', 'destroy')->name('vendor.destroy')->middleware('can:delete_vendor');
    });

    //Category
    Route::controller(CategoryController::class)->group(function(){
        Route::match(['get','patch'],'category', 'index')->name('category.index')->middleware('can:browse_category');
        Route::get('category/create', 'create')->name('category.create')->middleware('can:add_category');
        Route::get('category/{category}', 'show')->name('category.show')->middleware('can:read_category');
        Route::get('category/{category}/edit', 'edit')->name('category.edit')->middleware('can:edit_category');
        Route::post('category', 'store')->name('category.store')->middleware('can:add_category');
        Route::put('category/{category}', 'update')->name('category.update')->middleware('can:edit_category');
        Route::put('category/parent/{category}', 'updateParent')->name('category.updateParent')->middleware('can:edit_category');
        Route::delete('category/{category}/delete', 'destroy')->name('category.destroy')->middleware('can:delete_category');

        Route::get('category/remove/parent/{category}', 'removeParent')->name('category.remove.parent')->middleware('can:edit_category');

         Route::get('category/parent/list', 'parentList')->name('category.parent')->middleware('can:add_category');
    });


    //MaterialInward
    Route::controller(MaterialInwardController::class)->group(function(){
        Route::match(['get','patch'],'material-inward', 'index')->name('material-inward.index')->middleware('can:browse_material_inward');
        Route::get('material-inward/create', 'create')->name('material-inward.create')->middleware('can:add_material_inward');
        Route::get('material-inward/{material_inwards}', 'show')->name('material-inward.show')->middleware('can:read_material_inward');
        Route::get('material-inward/{material_inwards}/edit', 'edit')->name('material-inward.edit')->middleware('can:edit_material_inward');
        Route::post('material-inward', 'store')->name('material-inward.store')->middleware('can:add_material_inward');
        Route::put('material-inward/{material_inwards}', 'update')->name('material-inward.update')->middleware('can:edit_material_inward');
        Route::delete('material-inward/{material_inwards}/delete', 'destroy')->name('material-inward.destroy')->middleware('can:delete_material_inward');
    });


    //MaterialOrder
    Route::controller(MaterialOrderController::class)->group(function(){
        Route::match(['get','patch'],'material-order', 'index')->name('material-order.index')->middleware('can:browse_material_order');
        Route::get('material-order/create', 'create')->name('material-order.create')->middleware('can:add_material_order');
        Route::get('material-order/{material_orders}', 'show')->name('material-order.show')->middleware('can:read_material_order');
        Route::get('material-order/{material_orders}/edit', 'edit')->name('material-order.edit')->middleware('can:edit_material_order');
        Route::post('material-order', 'store')->name('material-order.store')->middleware('can:add_material_order');
        Route::put('material-order/{material_orders}', 'update')->name('material-order.update')->middleware('can:edit_material_order');
        Route::delete('material-order/{material_orders}/delete', 'destroy')->name('material-order.destroy')->middleware('can:delete_material_order');
        Route::put('material-order/change/status/{material_orders}', 'statusChange')->name('material-order.statusChange')->middleware('can:edit_material_order');
    });

    //Unit
    Route::controller(UnitController::class)->group(function(){
        Route::match(['get','patch'],'unit', 'index')->name('unit.index')->middleware('can:browse_unit');
        Route::get('unit/create', 'create')->name('unit.create')->middleware('can:add_unit');
        Route::get('unit/{unit}', 'show')->name('unit.show')->middleware('can:read_unit');
        Route::get('unit/{unit}/edit', 'edit')->name('unit.edit')->middleware('can:edit_unit');
        Route::post('unit', 'store')->name('unit.store')->middleware('can:add_unit');
        Route::put('unit/{unit}', 'update')->name('unit.update')->middleware('can:edit_unit');
        Route::delete('unit/{unit}/delete', 'destroy')->name('unit.destroy')->middleware('can:delete_unit');
    });

    //Product
    Route::controller(ProductController::class)->group(function(){
        Route::match(['get','patch'],'product', 'index')->name('product.index')->middleware('can:browse_product');
        Route::get('product/create', 'create')->name('product.create')->middleware('can:add_product');
        Route::get('product/{paper_inwards}', 'show')->name('product.show')->middleware('can:read_product');
        Route::get('product/{paper_inwards}/edit', 'edit')->name('product.edit')->middleware('can:edit_product');
        Route::post('product', 'store')->name('product.store')->middleware('can:add_product');
        Route::post('product/paper', 'storePaper')->name('product.store.paper')->middleware('can:add_product');
        Route::put('product/{paper_inwards}', 'update')->name('product.update')->middleware('can:edit_product');
        Route::delete('product/{paper_inwards}/delete', 'destroy')->name('product.destroy')->middleware('can:delete_product');
        Route::get('product/ledger/{id}', 'ledger')->name('product.ledger')->middleware('can:ledger_product');
    });



    //PurchaseOrder
    Route::controller(PurchaseOrderController::class)->group(function(){
        Route::match(['get','patch'],'purchase-order', 'index')->name('purchase-order.index')->middleware('can:browse_purchase_order');
        Route::get('purchase-order/create', 'create')->name('purchase-order.create')->middleware('can:add_purchase_order');
        Route::get('purchase-order/{purchase_orders}', 'show')->name('purchase-order.show')->middleware('can:read_purchase_order');
        Route::get('purchase-order/{purchase_orders}/edit', 'edit')->name('purchase-order.edit')->middleware('can:edit_purchase_order');
        Route::post('purchase-order', 'store')->name('purchase-order.store')->middleware('can:add_purchase_order');
        Route::put('purchase-order/{purchase_orders}', 'update')->name('purchase-order.update')->middleware('can:edit_purchase_order');
        Route::delete('purchase-order/{purchase_orders}/delete', 'destroy')->name('purchase-order.destroy')->middleware('can:delete_purchase_order');

        Route::post('purchase-order/items/update', 'poItemsUpdate')->name('purchase-order.item.update');
        Route::post('purchase-order/items/rate-quantity', 'rateQuantity')->name('purchase-order.item.rateQuantity');
        
        Route::post('purchase-order/item/assign/planning', 'assignToPlanning')->name('purchase-order.item.assign');

        Route::post('purchase-order/designer/assign/{items}', 'assignDesigner')->name('purchase-order.designer.assign')->middleware('can:designer_purchase_order');
    });


    //Planning
    Route::controller(PlanningController::class)->group(function(){
        Route::match(['get','patch'],'planning', 'index')->name('planning.index')->middleware('can:browse_planning');
        Route::get('planning/create', 'create')->name('planning.create')->middleware('can:add_planning');
        Route::get('planning/{planning}', 'show')->name('planning.show')->middleware('can:read_planning');
        Route::get('planning/{planning}/edit', 'edit')->name('planning.edit')->middleware('can:edit_planning');
        Route::post('planning', 'store')->name('planning.store')->middleware('can:add_planning');
        Route::put('planning/{planning}', 'update')->name('planning.update')->middleware('can:edit_planning');
        Route::delete('planning/{planning}/delete', 'destroy')->name('planning.destroy')->middleware('can:delete_planning');

        Route::post('planning/job-card/make', 'makeJobCard')->name('planning.make.jobcard');
        Route::post('planning/job-card/update/{job_cards}', 'updateJobCard')->name('planning.update.jobcard');
        Route::put('planning/change-status', 'changeStatus')->name('planning.changeStatus')->middleware('can:edit_planning');


        Route::match(['get','patch'],'planning/add-carton/{job_cards}', 'index')->name('planning.job-card')->middleware('can:browse_planning');
    });



    //Designing
    Route::controller(DesigningController::class)->group(function(){
        Route::match(['get','patch'],'designing', 'index')->name('designing.index')->middleware('can:browse_designing');
        Route::get('designing/create', 'create')->name('designing.create')->middleware('can:add_designing');
        Route::get('designing/{designings}', 'show')->name('designing.show')->middleware('can:read_designing');
        Route::get('designing/{designings}/edit', 'edit')->name('designing.edit')->middleware('can:edit_designing');
        Route::post('designing', 'store')->name('designing.store')->middleware('can:add_designing');
        Route::put('designing/{designings}', 'update')->name('designing.update')->middleware('can:edit_designing');
        Route::delete('designing/delete/{designings}', 'destroy')->name('designing.destroy')->middleware('can:delete_designing');

        Route::post('designing/job-card/sheet-size/update', 'sheetSizeUpdate')->name('designing.update.sheet-size');
        Route::post('designing/job-card/total-sheet/update', 'totalSheetUpdate')->name('designing.update.total-sheet');
        Route::post('designing/job-card/ups/update', 'upsUpdate')->name('designing.update.ups');
        Route::post('designing/job-card/color/update', 'colorUpdate')->name('designing.update.color');
        Route::post('designing/job-card/setno/update', 'setNoUpdate')->name('designing.update.setno');

        Route::put('designing/change/status', 'changeStatus')->name('designing.changeStatus');

    });


    //JobCard
    Route::controller(JobCardController::class)->group(function(){
        Route::get('job-card', 'index')->name('job-card.index')->middleware('can:browse_job_card');
        Route::get('job-card/create', 'create')->name('job-card.create')->middleware('can:add_job_card');
        Route::get('job-card/{job_cards}/edit', 'edit')->name('job-card.edit')->middleware('can:edit_job_card');
        Route::post('job-card', 'store')->name('job-card.store')->middleware('can:add_job_card');
        Route::put('job-card/{job_card}', 'update')->name('job-card.update')->middleware('can:edit_job_card');
        Route::get('job-card/{job_card}', 'show')->name('job-card.show')->middleware('can:read_job_card');
        Route::delete('job-card/{job-card}/delete', 'destroy')->name('job-card.destroy')->middleware('can:delete_job_card');
        Route::put('job-card/change/status/{job_cards}', 'updateData')->name('job-card.change.status')->middleware('can:change_status_job_card');;
        Route::put('job-card/change/status/{job_cards}/cancel', 'cancelData')->name('job-card.change.status')->middleware('can:change_status_job_card');;
        Route::get('job-card/download/{job_cards}', 'downloadJobCard')->name('job-card.download.pdf')->middleware('can:download_job_card');

        Route::post('job-card/zoom-image/{job_cards}', 'zoomImage')->name('job-card.zoom-image');
        Route::post('job-card/attachement/update', 'updatedAttchament')->name('job-card.attachement.store');

        Route::put('job-card/change/status', 'changeStatus')->name('job-card.changeStatus')->middleware('can:change_status_job_card');
        Route::get('job-card/track/{job_cards}', 'track')->name('job-card.track')->middleware('can:read_job_card');
        Route::get('job-card/user/assign/{job_cards}', 'userAssign')->name('job-card.user.assign')->middleware('can:user_job_card');
        Route::post('job-card/user/assign/{job_cards}', 'userAssignUpdate')->name('job-card.user.assign')->middleware('can:user_job_card');
        Route::post('job-card/user/assign/single/{job_cards}', 'userAssignSingle')->name('job-card.user.assign.single')->middleware('can:user_job_card');

    });



    //Transaction
    Route::controller(TransactionController::class)->group(function(){
        Route::match(['get','patch'],'transaction', 'index')->name('transaction.index')->middleware('can:browse_transaction');
        Route::get('transaction/create', 'create')->name('transaction.create')->middleware('can:add_transaction');
        Route::get('transaction/{transaction}', 'show')->name('transaction.show')->middleware('can:read_transaction');
        Route::get('transaction/{transaction}/edit', 'edit')->name('transaction.edit')->middleware('can:edit_transaction');
        Route::post('transaction', 'store')->name('transaction.store')->middleware('can:add_transaction');
        Route::put('transaction/{transaction}', 'update')->name('transaction.update')->middleware('can:edit_transaction');
        Route::delete('transaction/{transaction}/delete', 'destroy')->name('transaction.destroy')->middleware('can:delete_transaction');
    });


     //cutting
    Route::controller(CuttingController::class)->group(function(){
        Route::match(['get','patch'],'cutting', 'index')->name('cutting.index')->middleware('can:browse_cutting');
        Route::get('cutting/create', 'create')->name('cutting.create')->middleware('can:add_cutting');
        Route::get('cutting/{cutting}', 'show')->name('cutting.show')->middleware('can:read_cutting');
        Route::get('cutting/{cutting}/edit', 'edit')->name('cutting.edit')->middleware('can:edit_cutting');
        Route::post('cutting', 'store')->name('cutting.store')->middleware('can:add_cutting');
        Route::put('cutting/{cutting}', 'update')->name('cutting.update')->middleware('can:edit_cutting');
        Route::delete('cutting/{cutting}', 'destroy')->name('cutting.destroy')->middleware('can:delete_cutting');
        Route::put('cuttings/change-status', 'changeStatus')->name('cutting.changeStatus')->middleware('can:change_status_cutting');

        Route::post('cutting/oprater/update', 'oprator')->name('cutting.oprator');

    });




    //Printing
    Route::controller(PrintingController::class)->group(function(){
        Route::match(['get','patch'],'printing', 'index')->name('printing.index')->middleware('can:browse_printing');
        Route::get('printing/create', 'create')->name('printing.create')->middleware('can:add_printing');
        Route::get('printing/{printing}', 'show')->name('printing.show')->middleware('can:read_printing');
        Route::get('printing/{printing}/edit', 'edit')->name('printing.edit')->middleware('can:edit_printing');
        Route::post('printing', 'store')->name('printing.store')->middleware('can:add_printing');
        Route::put('printing/update/{printing}', 'update')->name('printing.update')->middleware('can:edit_printing');
        Route::delete('printing/{printing}/delete', 'destroy')->name('printing.destroy')->middleware('can:delete_printing');
        Route::put('printing/change-status', 'changeStatus')->name('printing.changeStatus')->middleware('can:change_status_printing');
        Route::post('printing/user/assign/{user_id}', 'assignUser')->name('printing.user.assign')->middleware('can:user_printing');
    });



      //dye-cutting
    Route::controller(DyeCuttingController::class)->group(function(){
        Route::match(['get','patch'],'dye-cutting', 'index')->name('dye-cutting.index')->middleware('can:browse_dye_cutting');
        Route::get('dye-cutting/create', 'create')->name('dye-cutting.create')->middleware('can:add_dye_cutting');
        Route::get('dye-cutting/{dye-cutting}', 'show')->name('dye-cutting.show')->middleware('can:read_dye_cutting');
        Route::get('dye-cutting/{dye-cutting}/edit', 'edit')->name('dye-cutting.edit')->middleware('can:edit_dye_cutting');
        Route::post('dye-cutting', 'store')->name('dye-cutting.store')->middleware('can:add_dye_cutting');
        Route::put('dye-cutting/{dye_cutting}', 'update')->name('dye-cutting.update')->middleware('can:edit_dye_cutting');
        Route::delete('dye-cutting/{id}', 'destroy')->name('dye-cutting.destroy')->middleware('can:delete_dye_cutting');
        Route::put('dye-cuttings/change-status', 'changeStatus')->name('dye-cutting.changeStatus')->middleware('can:change_status_dye_cutting');

        Route::post('dye-cutting/oprater/update', 'oprator')->name('dye-cutting.oprator');
    });


     //Chemical Coating
    Route::controller(ChemicalCoatingController::class)->group(function(){
        Route::match(['get','patch'],'chemical-coating', 'index')->name('chemical-coating.index')->middleware('can:browse_chemical_coating');
        Route::get('chemical-coating/create', 'create')->name('chemical-coating.create')->middleware('can:add_chemical_coating');
        Route::get('chemical-coating/{chemical_coating}', 'show')->name('chemical-coating.show')->middleware('can:read_chemical_coating');
        Route::get('chemical-coating/{chemical_coating}/edit', 'edit')->name('chemical-coating.edit')->middleware('can:edit_chemical_coating');
        Route::post('chemical-coating', 'store')->name('chemical-coating.store')->middleware('can:add_chemical_coating');
        Route::put('chemical-coating/{chemical_coating}', 'update')->name('chemical-coating.update')->middleware('can:edit_chemical_coating');
        Route::delete('chemical-coating/{chemical_coating}', 'destroy')->name('chemical-coating.destroy')->middleware('can:delete_chemical_coating');
        Route::put('chemical-coatings/change-status', 'changeStatus')->name('chemical-coating.changeStatus')->middleware('can:change_status_chemical_coating');

        Route::post('chemical-coating/oprater/update', 'oprator')->name('chemical-coating.oprator');
    });


     //Spot Uv
    Route::controller(SpotUvController::class)->group(function(){
        Route::match(['get','patch'],'spot-uv', 'index')->name('spot-uv.index')->middleware('can:browse_spot_uv');
        Route::get('spot-uv/create', 'create')->name('spot-uv.create')->middleware('can:add_spot_uv');
        Route::get('spot-uv/{spot_uv}', 'show')->name('spot-uv.show')->middleware('can:read_spot_uv');
        Route::get('spot-uv/{spot_uv}/edit', 'edit')->name('spot-uv.edit')->middleware('can:edit_spot_uv');
        Route::post('spot-uv', 'store')->name('spot-uv.store')->middleware('can:add_spot_uv');
        Route::put('spot-uv/{spot_uv}', 'update')->name('spot-uv.update')->middleware('can:edit_spot_uv');
        Route::delete('spot-uv/{spot_uv}', 'destroy')->name('spot-uv.destroy')->middleware('can:delete_spot_uv');
        Route::put('spot-uv/change/status', 'changeStatus')->name('spot-uv.changeStatus')->middleware('can:change_status_spot_uv');

        Route::post('spot-uv/oprater/update', 'oprator')->name('spot-uv.oprator');
    });



     //embossing
    Route::controller(EmbossingController::class)->group(function(){
        Route::match(['get','patch'],'embossing', 'index')->name('embossing.index')->middleware('can:browse_embossing');
        Route::get('embossing/create', 'create')->name('embossing.create')->middleware('can:add_embossing');
        Route::get('embossing/{embossing}', 'show')->name('embossing.show')->middleware('can:read_embossing');
        Route::get('embossing/{embossing}/edit', 'edit')->name('embossing.edit')->middleware('can:edit_embossing');
        Route::post('embossing', 'store')->name('embossing.store')->middleware('can:add_embossing');
        Route::put('embossing/{embossing}', 'update')->name('embossing.update')->middleware('can:edit_embossing');
        Route::delete('embossing/{embossing}', 'destroy')->name('embossing.destroy')->middleware('can:delete_embossing');
        Route::put('embossings/change-status', 'changeStatus')->name('embossing.changeStatus')->middleware('can:change_status_embossing');

        Route::post('embossing/oprater/update', 'oprator')->name('embossing.oprator');
    });



     //lamination
    Route::controller(LaminationController::class)->group(function(){
        Route::match(['get','patch'],'lamination', 'index')->name('lamination.index')->middleware('can:browse_lamination');
        Route::get('lamination/create', 'create')->name('lamination.create')->middleware('can:add_lamination');
        Route::get('lamination/{lamination}', 'show')->name('lamination.show')->middleware('can:read_lamination');
        Route::get('lamination/{lamination}/edit', 'edit')->name('lamination.edit')->middleware('can:edit_lamination');
        Route::post('lamination', 'store')->name('lamination.store')->middleware('can:add_lamination');
        Route::put('lamination/{lamination}', 'update')->name('lamination.update')->middleware('can:edit_lamination');
        Route::delete('lamination/{lamination}', 'destroy')->name('lamination.destroy')->middleware('can:delete_lamination');
        Route::put('laminations/change-status', 'changeStatus')->name('lamination.changeStatus')->middleware('can:change_status_lamination');

        Route::post('lamination/oprater/update', 'oprator')->name('lamination.oprator');
    });



     //leafing
    Route::controller(LeafingController::class)->group(function(){
        Route::match(['get','patch'],'leafing', 'index')->name('leafing.index')->middleware('can:browse_leafing');
        Route::get('leafing/create', 'create')->name('leafing.create')->middleware('can:add_leafing');
        Route::get('leafing/{leafing}', 'show')->name('leafing.show')->middleware('can:read_leafing');
        Route::get('leafing/{leafing}/edit', 'edit')->name('leafing.edit')->middleware('can:edit_leafing');
        Route::post('leafing', 'store')->name('leafing.store')->middleware('can:add_leafing');
        Route::put('leafing/{leafing}', 'update')->name('leafing.update')->middleware('can:edit_leafing');
        Route::delete('leafing/{leafing}', 'destroy')->name('leafing.destroy')->middleware('can:delete_leafing');
        Route::put('leafings/change-status', 'changeStatus')->name('leafing.changeStatus')->middleware('can:change_status_leafing');

        Route::post('leafing/oprater/update', 'oprator')->name('leafing.oprator');
    });


     //pasting
    Route::controller(PastingController::class)->group(function(){
        Route::match(['get','patch'],'pasting', 'index')->name('pasting.index')->middleware('can:browse_pasting');
        Route::get('pasting/create', 'create')->name('pasting.create')->middleware('can:add_pasting');
        Route::get('pasting/{pasting}', 'show')->name('pasting.show')->middleware('can:read_pasting');
        Route::get('pasting/{pasting}/edit', 'edit')->name('pasting.edit')->middleware('can:edit_pasting');
        Route::post('pasting', 'store')->name('pasting.store')->middleware('can:add_pasting');
        Route::put('pasting/{pasting}', 'update')->name('pasting.update')->middleware('can:edit_pasting');
        Route::delete('pasting/{pasting}', 'destroy')->name('pasting.destroy')->middleware('can:delete_pasting');
        Route::put('pastings/change-status', 'changeStatus')->name('pasting.changeStatus')->middleware('can:change_status_pasting');

        Route::post('pasting/oprater/update', 'oprator')->name('pasting.oprator');
    });



     //Billing
    Route::controller(BillingController::class)->group(function(){
        Route::match(['get','patch'],'billing', 'index')->name('billing.index')->middleware('can:browse_billing');
        Route::get('billing/create', 'create')->name('billing.create')->middleware('can:add_billing');
        Route::get('billing/{billing}', 'show')->name('billing.show')->middleware('can:read_billing');
        Route::get('billing/{billing}/edit', 'edit')->name('billing.edit')->middleware('can:edit_billing');
        Route::post('billing', 'store')->name('billing.store')->middleware('can:add_billing');
        Route::put('billing/update/data', 'update')->name('billing.update')->middleware('can:edit_billing');
        Route::delete('billing/{billing}', 'destroy')->name('billing.destroy')->middleware('can:delete_billing');
        Route::put('billing/change/status', 'changeStatus')->name('billing.changeStatus')->middleware('can:change_status_billing');
        Route::get('billing/coa/certificate/{id}/edit', 'cao')->name('billing.coa')->middleware('can:browse_billing');
        Route::put('billing/coa/certificate/{id}', 'caoUpdate')->name('billing.coa.update')->middleware('can:browse_billing');
    });




     //issue
    Route::controller(IssueController::class)->group(function(){
        Route::match(['get','patch'],'issue', 'index')->name('issue.index')->middleware('can:browse_issue');
        Route::get('issue/create', 'create')->name('issue.create')->middleware('can:add_issue');
        Route::get('issue/{issue}', 'show')->name('issue.show')->middleware('can:read_issue');
        Route::get('issue/{issue}/edit', 'edit')->name('issue.edit')->middleware('can:edit_issue');
        Route::post('issue', 'store')->name('issue.store')->middleware('can:add_issue');
        Route::put('issue/update/data', 'update')->name('issue.update')->middleware('can:edit_issue');
        Route::delete('issue/{issue}/delete', 'destroy')->name('issue.destroy')->middleware('can:delete_issue');
    });


     //Requisition
    Route::controller(RequisitionController::class)->group(function(){
        Route::match(['get','patch'],'requisition', 'index')->name('requisition.index')->middleware('can:browse_requisition');
        Route::get('requisition/create', 'create')->name('requisition.create')->middleware('can:add_requisition');
        Route::get('requisition/{requisition}', 'show')->name('requisition.show')->middleware('can:read_requisition');
        Route::get('requisition/{requisition}/edit', 'edit')->name('requisition.edit')->middleware('can:edit_requisition');
        Route::post('requisition', 'store')->name('requisition.store')->middleware('can:add_requisition');
        Route::put('requisition/{requisition}', 'update')->name('requisition.update')->middleware('can:edit_requisition');
        Route::delete('requisition/{requisition}', 'destroy')->name('requisition.destroy')->middleware('can:delete_requisition');
    });


     //Warehouse
    Route::controller(WarehouseController::class)->group(function(){
        Route::match(['get','patch'],'warehouse', 'index')->name('warehouse.index')->middleware('can:browse_warehouse');
        Route::get('warehouse/create', 'create')->name('warehouse.create')->middleware('can:add_warehouse');
        Route::get('warehouse/{warehouse}', 'show')->name('warehouse.show')->middleware('can:read_warehouse');
        Route::get('warehouse/{warehouse}/edit', 'edit')->name('warehouse.edit')->middleware('can:edit_warehouse');
        Route::post('warehouse', 'store')->name('warehouse.store')->middleware('can:add_warehouse');
        Route::put('warehouse/{warehouse}', 'update')->name('warehouse.update')->middleware('can:edit_warehouse');
        Route::delete('warehouse/{warehouse}', 'destroy')->name('warehouse.destroy')->middleware('can:delete_warehouse');
        Route::put('warehouses/change-status', 'changeStatus')->name('warehouse.changeStatus')->middleware('can:change_status_warehouse');
        Route::post('warehouses/add-to-bill/{id}', 'addToBill')->name('warehouse.add-to-bill');
    });



     //PaperWarehouse
    Route::controller(PaperWarehouseController::class)->group(function(){
        Route::match(['get','patch'],'paper-warehouse', 'index')->name('paper-warehouse.index')->middleware('can:browse_paper_warehouse');
        Route::get('paper-warehouse/create', 'create')->name('paper-warehouse.create')->middleware('can:add_paper_warehouse');
        Route::get('paper-warehouse/{id}', 'show')->name('paper-warehouse.show')->middleware('can:read_paper_warehouse');
        Route::get('paper-warehouse/{id}/edit', 'edit')->name('paper-warehouse.edit')->middleware('can:edit_paper_warehouse');
        Route::post('paper-warehouse', 'store')->name('paper-warehouse.store')->middleware('can:add_paper_warehouse');
        Route::put('paper-warehouse/{id}', 'update')->name('paper-warehouse.update')->middleware('can:edit_paper_warehouse');
        Route::delete('paper-warehouse/{id}', 'destroy')->name('paper-warehouse.destroy')->middleware('can:delete_paper_warehouse');
    });


     //ModuleUser
    Route::controller(ModuleUserController::class)->group(function(){
        Route::match(['get','patch'],'module-user', 'index')->name('module-user.index')->middleware('can:browse_module_user');
        Route::get('module-user/create', 'create')->name('module-user.create')->middleware('can:add_module_user');
        Route::get('module-user/{module_users}', 'show')->name('module-user.show')->middleware('can:read_module_user');
        Route::get('module-user/{module_users}/edit', 'edit')->name('module-user.edit')->middleware('can:edit_module_user');
        Route::post('module-user', 'store')->name('module-user.store')->middleware('can:add_module_user');
        Route::put('module-user/update/{id}', 'update')->name('module-user.update')->middleware('can:edit_module_user');
        Route::delete('module-user/{module_users}/delete', 'destroy')->name('module-user.destroy')->middleware('can:delete_module_user');
    });


    //ProductType
    Route::controller(ProductTypeController::class)->group(function(){
        Route::match(['get','patch'],'product-type', 'index')->name('product-type.index')->middleware('can:browse_product_type');
        Route::get('product-type/create', 'create')->name('product-type.create')->middleware('can:add_product_type');
        Route::get('product-type/{product_types}', 'show')->name('product-type.show')->middleware('can:read_product_type');
        Route::get('product-type/{product_types}/edit', 'edit')->name('product-type.edit')->middleware('can:edit_product_type');
        Route::post('product-type', 'store')->name('product-type.store')->middleware('can:add_product_type');
        Route::put('product-type/{product_types}', 'update')->name('product-type.update')->middleware('can:edit_product_type');
        Route::delete('product-type/{product_types}/delete', 'destroy')->name('product-type.destroy')->middleware('can:delete_product_type');
    });


    //JobCardTimer
    Route::controller(JobCardTimerController::class)->group(function(){
        Route::post('job-card/timer/start', 'start')->name('job-card.timer.start');
        Route::post('job-card/timer/pause', 'pause')->name('job-card.timer.pause');
        Route::post('job-card/timer/resume', 'resume')->name('job-card.timer.resume');
        Route::post('job-card/timer/stop', 'stop')->name('job-card.timer.stop');
        Route::post('job-card/timer/content', 'content')->name('job-card.timer.content');
    });


     //Carton
    Route::controller(CartonController::class)->group(function(){
        Route::match(['get','patch'],'carton', 'index')->name('carton.index')->middleware('can:browse_carton');
        Route::get('carton/create', 'create')->name('carton.create')->middleware('can:add_carton');
        Route::get('carton/{carton}', 'show')->name('carton.show')->middleware('can:read_carton');
        Route::get('carton/{carton}/edit', 'edit')->name('carton.edit')->middleware('can:edit_carton');
        Route::post('carton', 'store')->name('carton.store')->middleware('can:add_carton');
        Route::put('carton/{carton}', 'update')->name('carton.update')->middleware('can:edit_carton');
        Route::delete('carton/{carton}', 'destroy')->name('carton.destroy')->middleware('can:delete_carton');
    });








});