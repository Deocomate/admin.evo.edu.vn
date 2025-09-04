<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('customers', function (Blueprint $table) {
            // ADDED: Thêm cột 'age' kiểu integer sau cột 'full_name_children'
            $table->integer('age')->after('full_name_children');

            // REMOVED: Xóa cột 'date_of_birth'
            $table->dropColumn('date_of_birth');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('customers', function (Blueprint $table) {
            // Thao tác ngược lại để có thể rollback
            $table->dropColumn('age');
            $table->date('date_of_birth')->after('full_name_children');
        });
    }
};
