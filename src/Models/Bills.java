/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author m4rkm3n
 */
public class Bills {
    private int bill_id;
    private int bill_cid;
    private int bill_num;
    private String issuedate;
    private String duedate;
    private int unit_cost;
    private int total_cost;
    private int units_consumed;
    private int after_due_date;
    private String bill_status;
    private int fc_surcharge;
    private int ptv_fee;
    private int gst;
    private int electricity_duty;
    
    public int getBill_id() {
        return bill_id;
    }

    public void setBill_id(int bill_id) {
        this.bill_id = bill_id;
    }

    public int getBill_cid() {
        return bill_cid;
    }

    public void setBill_cid(int bill_cid) {
        this.bill_cid = bill_cid;
    }

    public int getBill_num() {
        return bill_num;
    }

    public void setBill_num(int bill_num) {
        this.bill_num = bill_num;
    }

    public String getIssuedate() {
        return issuedate;
    }

    public void setIssuedate(String issuedate) {
        this.issuedate = issuedate;
    }

    public String getDuedate() {
        return duedate;
    }

    public void setDuedate(String duedate) {
        this.duedate = duedate;
    }

    public int getUnit_cost() {
        return unit_cost;
    }

    public void setUnit_cost(int unit_cost) {
        this.unit_cost = unit_cost;
    }

    public int getTotal_cost() {
        return total_cost;
    }

    public void setTotal_cost(int total_cost) {
        this.total_cost = total_cost;
    }

    public int getUnits_consumed() {
        return units_consumed;
    }

    public void setUnits_consumed(int units_consumed) {
        this.units_consumed = units_consumed;
    }

    public int getAfter_due_date() {
        return after_due_date;
    }

    public void setAfter_due_date(int after_due_date) {
        this.after_due_date = after_due_date;
    }

    public String getBill_status() {
        return bill_status;
    }

    public void setBill_status(String bill_status) {
        this.bill_status = bill_status;
    }

    public int getFc_surcharge() {
        return fc_surcharge;
    }

    public void setFc_surcharge(int fc_surcharge) {
        this.fc_surcharge = fc_surcharge;
    }

    public int getPtv_fee() {
        return ptv_fee;
    }

    public void setPtv_fee(int ptv_fee) {
        this.ptv_fee = ptv_fee;
    }

    public int getGst() {
        return gst;
    }

    public void setGst(int gst) {
        this.gst = gst;
    }

    public int getElectricity_duty() {
        return electricity_duty;
    }

    public void setElectricity_duty(int electricity_duty) {
        this.electricity_duty = electricity_duty;
    }
    
    
    
}
