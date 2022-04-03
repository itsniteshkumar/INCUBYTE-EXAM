
import React from "react";
import * as Yup from "yup";
import { Formik, Form, Field, ErrorMessage } from "formik";
import { FormGroup, FormControl, Button } from "react-bootstrap";
  
const Crudapp = (props) => {
  const validationSchema = Yup.object().shape({
    word: Yup.string().required("Rquired"),
  });
  console.log(props);
  return (
    <div className="form-wrapper">
      <Formik {...props} validationSchema={validationSchema}>
        <Form>
            <Field word="name" type="text" 
                className="form-control" />
            <ErrorMessage
              word="word"
              className="d-block invalid-feedback"
              component="span"
            />
        </Form>
      </Formik>
    </div>
  );
};
  
export default Crudapp;