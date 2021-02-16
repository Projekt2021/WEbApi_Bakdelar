using Microsoft.EntityFrameworkCore.Migrations;

namespace TestApi.Migrations
{
    public partial class singleproductimage : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ProductImage_Product_ProductID",
                table: "ProductImage");

            migrationBuilder.DropIndex(
                name: "IX_ProductImage_ProductID",
                table: "ProductImage");

            migrationBuilder.AddColumn<int>(
                name: "ProductImageID",
                table: "Product",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_Product_ProductImageID",
                table: "Product",
                column: "ProductImageID");

            migrationBuilder.AddForeignKey(
                name: "FK_Product_ProductImage_ProductImageID",
                table: "Product",
                column: "ProductImageID",
                principalTable: "ProductImage",
                principalColumn: "ProductImageID",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Product_ProductImage_ProductImageID",
                table: "Product");

            migrationBuilder.DropIndex(
                name: "IX_Product_ProductImageID",
                table: "Product");

            migrationBuilder.DropColumn(
                name: "ProductImageID",
                table: "Product");

            migrationBuilder.CreateIndex(
                name: "IX_ProductImage_ProductID",
                table: "ProductImage",
                column: "ProductID");

            migrationBuilder.AddForeignKey(
                name: "FK_ProductImage_Product_ProductID",
                table: "ProductImage",
                column: "ProductID",
                principalTable: "Product",
                principalColumn: "ID",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
