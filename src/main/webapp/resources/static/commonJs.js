/**
 * Created by qin on 2017/2/21.
 */
function loadCities(provinceId,cityId){
    $.ajax({
        url: '/city/list/'+ provinceId,
        type: 'get',
        dataType: 'JSON',
        timeout: 5000,
        error: function() {
            $("#city").empty();
            $("<option value=''>-- 请选择 --</option>").appendTo($("#city"));
        },
        success: function(msg) {
            $("#city").empty();
            $("<option value=''>-- 请选择 --</option>").appendTo($("#city"));
            $.each(eval(msg), function(i, item) {
                if (cityId !== null || cityId !== undefined || cityId !== '') {
                    if(cityId!=item.id){
                        $("<option value='" + item.id + "'>" + item.cityName + "</option>").appendTo($("#city"));
                    }else{
                        $("<option value='" + item.id + "' selected='true'>" + item.cityName + "</option>").appendTo($("#city"));
                    }
                }else{
                    $("<option value='" + item.id + "'>" + item.cityName + "</option>").appendTo($("#city"));
                }
            });
        }
    });

}
