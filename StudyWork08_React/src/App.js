import React from "react";
import "./App.scss";
import Button from "@material-ui/core/Button";

// function App() {[
//   return <div className="App">Functional Component</div>;
// }

class App extends React.Component {
    state = {
        balanceBegin: 0,
        balanceNow: 0,
        stateMoney: "begin",
        stateExpense: "new",
        headModalText: "Введите, пожалуйста, начальный баланс",
        summaState: 0,
        commState: "",
        idNow: 0,
        closeModalForm: true,
        textAreaIsShow: false,
        expenses: [
            // {
            //     id: 1,
            //     comm: 'Доход от дедушки из США',
            //     summa: 100,
            //     item: "debet",
            // },
        ],
    }

    showModal = (textAreaShow, headModalText, stateMoney, stateExpense, idExpense) => {
        if (stateExpense === "new") {
            this.setState({
                summaState: 0,
                commState: "",
            })
        }
        this.setState({
            stateMoney: stateMoney,
            stateExpense: stateExpense,
            headModalText: headModalText,
            idNow: idExpense,
            textAreaIsShow: textAreaShow,
        })

        this.setState((prevState) => {
            return {closeModalForm: !prevState.closeModalForm}
        });
    }

    inputHandler = event => {
        this.setState({
            [event.target.name]: event.target.value
            // summaState: event.target.value,
        })
    }

    beginBalance = () => {
        this.setState({
            balanceBegin: this.state.summaState,
            balanceNow: this.state.summaState,
        })
        this.closeModal()
    }

    balanceDebetCredit = () => {
        let summa = this.state.summaState
        let comm = this.state.commState
        if ((this.state.stateMoney === "credit" && summa>0) || (this.state.stateMoney === "debet" && summa<0)) {
            summa = summa * -1
        }

        if (this.state.stateExpense === "new") {
            this.setState({
                balanceNow: (Number(this.state.balanceNow) + Number(summa))
            })
            this.addExpense(summa, comm)
        } else {
            let expense = this.state.expenses.find(item => item.id === this.state.idNow);
            let summTmp = Number(expense.summa)
            expense.summa = Number(summa)
            expense.comm = comm
            this.setState({
                balanceNow: (Number(this.state.balanceNow) - Number(summTmp) + Number(summa))
            })
        }
        this.closeModal()
    }

    addExpense = (summ, comm) => {
        this.setState({
            expenses: [...this.state.expenses, {
                id: new Date().getTime(),
                comm: comm,
                summa: summ,
                item: this.state.stateMoney,
            }],
        })
    }

    deleteExpense = id => {
        let expense = this.state.expenses.find(item => item.id === id);
        this.setState({
                balanceNow: Number(this.state.balanceNow) + (Number(expense.summa) * -1),
                expenses: this.state.expenses.filter(el => (
                    el.id !== id
                ))
            }
        )
    }

    editExpense = id => {
        let expense = this.state.expenses.find(item => item.id === id);
        if (expense.item === "credit") {
            this.setState({
                summaState: Number(expense.summa) * -1
            })
        } else {
            this.setState({
                summaState: Number(expense.summa)
            })
        }
        this.setState({
            commState: expense.comm,
        })
        this.showModal(1, "Отредактируйте доход/расход", expense.item, "edit", expense.id)
    }

    closeModal = () => {
        // this.setState((prevState) => {
        //     return {closeModalForm: !prevState.closeModalForm}
        // });

        this.setState({
            closeModalForm: true,
        })
    }


    render() {
        const {balanceBegin, balanceNow, expenses, headModalText, summaState, closeModalForm, commState, textAreaIsShow} = this.state
        return (
            <div className="App">
                <h1>Финансовый журнал</h1>
                <p className="textBalanceBegin">Начальный баланс = {balanceBegin}</p>
                <Button className="btnBegin" color='primary' variant='contained'
                        onClick={() => this.showModal(false, "Введите, пожалуйста, начальный баланс", "begin")}>Задать
                    баланс</Button>
                <div className="btnsDebetKredit">
                    <Button className="btnDebet" variant='contained'
                            onClick={() => this.showModal(true, "Введите, пожалуйста, доход и комментарий", "debet", "new")}>Ввести
                        доход</Button>
                    <Button className="btnKredit" color='secondary' variant='contained'
                            onClick={() => this.showModal(true, "Введите, пожалуйста, расход и комментарий", "credit", "new")}>Ввести
                        расход</Button>
                </div>
                <p className="textBalanceNow">Текущий баланс = {balanceNow}</p>

                <div className="expenses">
                    {expenses.map(exp => (
                        <div className={`exp${exp.item === "debet" ? " debet" : " credit"}`}
                             key={exp.id}>
                            <p className="comm">{exp.comm}</p>
                            <p className="summa">{exp.summa}</p>
                            <Button color='primary'
                                    variant='contained'
                                    onClick={() => this.editExpense(exp.id)}
                            >Edit</Button>
                            <Button color='secondary'
                                    variant='contained'
                                    onClick={() => this.deleteExpense(exp.id)}
                            >Delete</Button>
                        </div>
                    ))}
                </div>

                <div className={`overlay-container${closeModalForm ? " hide" : " show"}`}>
                    <div className={`window-container${closeModalForm ? "" : " window-container-visible"}`}>
                        <h3 className="headModal">
                            {headModalText}
                        </h3>
                        <div className="textsModal">
                            <input className="inpBalance" type="number" name="summaState" id="beginBalance"
                                   autoComplete="off"
                                   value={summaState}
                                   onChange={this.inputHandler}/>
                            <textarea className={`commentArea${textAreaIsShow ? " show" : " hide"}`}
                                      name="commState"
                                      id="comment"
                                      placeholder="Comment"
                                      value={commState}
                                      onChange={this.inputHandler}
                            />
                        </div>
                        <div className="modal__btns">
                            <Button className={`okBegin${textAreaIsShow ? " hide" : " show"}`}
                                    color='primary' variant='contained'
                                    onClick={() => this.beginBalance()}>Подтвердить</Button>
                            <Button className={`okDebetCredit${textAreaIsShow ? " show" : " hide"}`}
                                    color='primary' variant='contained'
                                    onClick={() => this.balanceDebetCredit()}>Подтвердить</Button>
                            <Button className="close" color='secondary' variant='contained'
                                    onClick={() => this.closeModal()}>Отмена</Button>
                        </div>
                    </div>
                </div>
            </div>

        );
    }
}

export default App;
