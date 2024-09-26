package pageObject;

import org.openqa.selenium.By;

import java.util.Objects;

public class VoucherAddEdit {

    public static By inputVoucherCalculation (String memberMarking, String inputName){
        return By.xpath("//h6[text()='Voucher Calculation']/parent::div/following-sibling::div[2]//child::h6[text()='"+memberMarking+"']/parent::label/following-sibling::div/child::label[text()='"+inputName+"']/following-sibling::div/child::input");
    }

    public static By checkAllPaymentMethod(String methodName) {
        return By.xpath("//h6[text()='Voucher Payment Method']/parent::div/following-sibling::div/child::div/child::p[text()='"+methodName+"']/following-sibling::div/child::label/child::span/following-sibling::p[text()='All Payment Method Including Cash']/preceding-sibling::span");
    }

    public static By dropDownPaymentMethod(String presentMarking, String paymentMethodName,String row) {
        return By.xpath("(//h6[text()='Voucher Payment Method']/parent::div/following-sibling::div/child::div/child::p[text()='"+presentMarking+"']/parent::div/following-sibling::div/child::div/child::div/child::div/child::div/child::label[text()='"+paymentMethodName+"']/following-sibling::div)["+row+"]");
    }

    public static By buttonDynamic(String presentMarking, String paymentMethodName, String buttonName){
        return By.xpath("//h6[text()='Voucher Payment Method']/parent::div/following-sibling::div/child::div/child::p[text()='"+presentMarking+"']/parent::div/following-sibling::div/child::div/child::div/child::p[text()='"+paymentMethodName+"']/following-sibling::div/child::button[.='"+buttonName+"']");
    }

    public static By checkBoxName(String presentMarking, String paymentMethodName, String checkBoxName) {
        return By.xpath("//h6[text()='Voucher Payment Method']/parent::div/following-sibling::div/child::div/child::p[text()='"+presentMarking+"']/parent::div/following-sibling::div/child::div/child::div/child::div/child::div/child::label[text()='"+paymentMethodName+"']/parent::div/parent::div/following-sibling::div[1]/child::div[2]/child::div/child::div[1]/child::div[2]/child::div/child::div/child::div/child::div/child::label/child::span/child::div/child::h6[text()='"+checkBoxName+"']");
    }

    public static By buttonVoucherTime(String blockName, String buttonName){
        return By.xpath("(//h6[text()='Voucher Time']/parent::div/following-sibling::div//child::p[text()='"+blockName+"'])[1]/parent::div/following-sibling::div//child::button[text()='"+buttonName+"']");
    }

    public static By dropDownSelectDay(String presentMarking, String row) {
        return By.xpath("//h6[text()='Voucher Time']/parent::div/following-sibling::div/child::div/child::p[text()='"+presentMarking+"']/parent::div/following-sibling::div/child::div/following-sibling::div/child::div['"+row+"']/child::div/following-sibling::div/child::div/child::label/child::p[text()='Day']/parent::label/following-sibling::div");
    }

    public static By dropDownSelectTime(String presentMarking, String startOrEnd, String row, String hourOrMinute) {

        int tag = 0;
        if (Objects.equals(hourOrMinute, "Hour")) {
            tag = 1;
        }else if (Objects.equals(hourOrMinute, "Minutes")){
            tag = 2;
        }
        return By.xpath("(//p[text()='"+presentMarking+"']/parent::div/following-sibling::div/child::div/following-sibling::div//child::div/following-sibling::div//child::p[text()='"+ startOrEnd +"']/parent::label/following-sibling::div)['"+row+"']/child::div["+tag+"]");
    }

    public static By voucherPaymentMethodCheck(String presentMarking, String checkName) {
        return By.xpath("//p[text()='"+presentMarking+"']/parent::div/following-sibling::div/child::div/child::div/child::p/following-sibling::div/child::label/child::h6[text()='"+checkName+"']/preceding-sibling::span");
    }
}