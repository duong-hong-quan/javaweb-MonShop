/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quandh.ordertatuses;

/**
 * @author PC_HONGQUAN
 */
public class OrderStatusesDTO {
    private int id;
    private String status;

    public OrderStatusesDTO() {
    }

    public OrderStatusesDTO(String status) {
        this.status = status;
    }

    public OrderStatusesDTO(int id, String status) {
        this.id = id;
        this.status = status;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "OrderStatusesDTO{" + "id=" + id + ", status=" + status + '}';
    }


}
