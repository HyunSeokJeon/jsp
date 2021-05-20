<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/header.jspf" %>

    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css" />

    <script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>

    <script type="text/javascript" language="javascript" src="../../dist/js/pages/jquery.dataTables.min.js"></script>
    <script type="text/javascript">
      function googleTranslateElementInit() {
        new google.translate.TranslateElement(
          {
            pageLanguage: "ko",
            includedLanguages: "en,ja,ko,zh-CN",
            layout: google.translate.TranslateElement.InlineLayout.SIMPLE,
          },
          "google_translate_element"
        );
      }
    </script>
    <script
      type="text/javascript"
      src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"
    ></script>
    <style>
      .news_board_th img {
        height: 50px;
      }
    </style>
  </head>
  
      <!-- =============================================== -->

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Blank page
            <small>it all starts here</small>
          </h1>
          <ol class="breadcrumb">
            <li>
              <a href="#"><i class="fa fa-dashboard"></i> Home</a>
            </li>
            <li><a href="#">Examples</a></li>
            <li class="active">Blank page</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <!-- Default box -->
          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">Title</h3>

              <div class="box-tools pull-right">
                <button
                  type="button"
                  class="btn btn-box-tool"
                  data-widget="collapse"
                  data-toggle="tooltip"
                  title="Collapse"
                >
                  <i class="fa fa-minus"></i>
                </button>
                <button
                  type="button"
                  class="btn btn-box-tool"
                  data-widget="remove"
                  data-toggle="tooltip"
                  title="Remove"
                >
                  <i class="fa fa-times"></i>
                </button>
              </div>
            </div>
            <div class="box-body">
              <table id="example" class="display" cellspacing="0" width="100%">
                <thead>
                  <tr>
                    <th>ë¶ë¥</th>
                    <th></th>
                    <th>ì ëª©</th>
                    <th>ë ì§</th>
                  </tr>
                </thead>
                <tfoot>
                  <hr />
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->
            <div class="box-footer">Footer</div>
            <!-- /.box-footer-->
          </div>
          <!-- /.box -->
        </section>
        <!-- /.content -->
      </div>
      <!-- /.content-wrapper -->

      
    <script type="text/javascript" class="init">
      $(document).ready(function () {
        $("#example").DataTable({
          language: {
            sEmptyTable: "ë°ì´í°ê° ììµëë¤",
            sInfo: "_START_ - _END_ / _TOTAL_",
            sInfoEmpty: "0 - 0 / 0",
            sInfoFiltered: "(ì´ _MAX_ ê°)",
            sInfoPostFix: "",
            sInfoThousands: ",",
            sLengthMenu: "íì´ì§ë¹ ì¤ì _MENU_",
            sLoadingRecords: "ì½ëì¤...",
            sProcessing: "ì²ë¦¬ì¤...",
            sSearch: "ê²ì:",
            sZeroRecords: "ê²ì ê²°ê³¼ê° ììµëë¤",
            oPaginate: {
              sFirst: "ì²ì",
              sLast: "ë§ì§ë§",
              sNext: "ë¤ì",
              sPrevious: "ì´ì ",
            },
          },
          oAria: {
            sSortAscending: ": ì¤ë¦ì°¨ì ì ë ¬",
            sSortDescending: ": ë´ë¦¼ì°¨ì ì ë ¬",
          },
          ajax: {
            url: "https://api.rss2json.com/v1/api.json?rss_url=https://it.donga.com/feeds/rss/news/&api_key=bp7sg8suvd1tlbxzjhbgsl0w957qt0fxtodbkhhz&count=200",
            dataSrc: "items",
          },
          columns: [
            { data: "categories" },
            {
              data: "thumbnail",
              render: function (data, type, row) {
                return "<img src='" + row["thumbnail"] + "'/>";
              },
              class: "news_board_th",
            },
            {
              data: "title",
              render: function (data, type, row) {
                return '<a href="' + row["link"] + '">' + row["title"] + "</a>";
              },
            },
            {
              data: "pubDate",
              render: function (data, type, row) {
                var date = new Date(row["pubDate"]);
                data = date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate();
                return data;
              },
            },
          ],
        });
      }); // end of $(document).ready(function()
    </script>

