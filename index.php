<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<?php
include('./base/DB.class.php');
include('./base/Funcoes.class.php');

$database = new DB();
/*$dados = $database->get_results("SELECT 
                                        * 
                                        FROM uf
                                       
                                        ");*/
$mun_est = $database->get_results("SELECT
            u.id,
            u.sigla as estado,
            COUNT(mun.nome) as cidade
            FROM uf as u 
            left join municipios as mun on mun.uf = u.id
            group by u.id");

//foreach ($mun_est as $item) {
// printR($item['estado']);
//}

//foreach ($mun_est as $item) {
//   printR($item);
//}

?>

<body>
    <div id="content">

    </div>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", () => {
            // Data retrieved from https://gs.statcounter.com/browser-market-share#monthly-202201-202201-bar

            // Create the chart
            Highcharts.chart('content', {
                chart: {
                    type: 'column'
                },
                title: {
                    text: 'Cidades por Estado em 2023'
                },
                xAxis: {
                    type: 'category',
                    labels: {
                        rotation: -45,
                        style: {
                            fontSize: '13px',
                            fontFamily: 'Verdana, sans-serif'
                        }
                    }
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: 'cidade'
                    }
                },
                legend: {
                    enabled: false
                },
                tooltip: {
                    pointFormat: 'População em 2023: <b>{point.y}</b>'
                },
                series: [{
                    name: 'Population',
                    colors: [
                        '#9b20d9', '#9215ac', '#861ec9', '#7a17e6', '#7010f9', '#691af3',
                        '#6225ed', '#5b30e7', '#533be1', '#4c46db', '#4551d5', '#3e5ccf',
                        '#3667c9', '#2f72c3', '#277dbd', '#1f88b7', '#1693b1', '#0a9eaa',
                        '#03c69b', '#00f194'
                    ],
                    colorByPoint: true,
                    groupPadding: 0,
                    data: [
                        //Script php para adicionar os dados no gráfico
                        <?php
                        foreach ($mun_est as $item) {
                            ?>
                            ['<?php echo $item['estado'];?>', <?php echo $item['cidade'];?>],
                            <?php
                        }
                        ?>
                    ],
                    dataLabels: {
                        enabled: true,
                        rotation: -90,
                        color: '#FFFFFF',
                        align: 'right',
                        format: '{point.y:.1f}', // one decimal
                        y: 10, // 10 pixels down from the top
                        style: {
                            fontSize: '13px',
                            fontFamily: 'Verdana, sans-serif'
                        }
                    }
                }]
            });

        })
    </script>


</body>

</html>


<!--$query = $database->insert( 'tabela', $_POST );
$idLast = $database->lastid();

$where = array( 'id' => $_POST['id'] );
$query = $database->update( 'tabela', $_POST, $where, 1 );
$idLast = $_POST['id'];-->