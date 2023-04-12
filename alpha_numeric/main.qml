import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Alpha Numeric Keyboard")

    Rectangle {
        id: rectangle
        width: parent.width
        height: parent.height
        anchors.centerIn: parent

        Column{
            id: column
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 5
            Row {
                id: row1
                width: column.width
//                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 10
                Label {
                    height: parent.height
                    id: label
                    text: qsTr("Field Name: ")
                    verticalAlignment: Text.AlignVCenter
                }

                TextField {
                    width: row1.width - label.width
                    id: user_entry
                    placeholderText: qsTr("USER ENTRY")
                }

            }

            Row {

                spacing: 5
                RoundButton {
                    id: btn_one
                    text: "1"

                    onClicked: {
                        user_entry.text = user_entry.text + btn_one.text
                    }
                }

                RoundButton {
                    id: btn_two
                    text: "2"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_two.text
                    }
                }

                RoundButton {
                    id: btn_three
                    text: "3"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_three.text
                    }
                }

                RoundButton {
                    id: btn_four
                    text: "4"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_four.text
                    }
                }

                RoundButton {
                    id: btn_five
                    text: "5"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_five.text
                    }
                }

                RoundButton {
                    id: btn_six
                    text: "6"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_six.text
                    }
                }

                RoundButton {
                    id: btn_seven
                    text: "7"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_seven.text
                    }
                }

                RoundButton {
                    id: btn_eight
                    text: "8"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_eight.text
                    }
                }

                RoundButton {
                    id: btn_nine
                    text: "9"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_nine.text
                    }
                }

                RoundButton {
                    id: btn_zero
                    text: "0"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_zero.text
                    }
                }

                RoundButton {
                    text: "BkSpc"
                    padding: 10
                    anchors.leftMargin: 50

                    onClicked: {
                        var position = user_entry.cursorPosition
                        user_entry.text = user_entry.text.substring(0, user_entry.cursorPosition - 1) + user_entry.text.substring(user_entry.cursorPosition, user_entry.text.length)
                        user_entry.cursorPosition = position - 1
                    }
                }
            }

            Row {
                id: row2
                spacing: 5
                RoundButton {
                    id: btn_q
                    text: "Q"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_q.text
                    }
                }

                RoundButton {
                    id: btn_w
                    text: "W"

                    onClicked: {
                        user_entry.text = user_entry.text + btn_w.text
                    }
                }

                RoundButton {
                    id: btn_e
                    text: "E"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_e.text
                    }
                }

                RoundButton {
                    id: btn_r
                    text: "R"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_r.text
                    }
                }

                RoundButton {
                    id: btn_t
                    text: "T"

                    onClicked: {
                        user_entry.text = user_entry.text + btn_t.text
                    }
                }

                RoundButton {
                    id: btn_y
                    text: "Y"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_y.text
                    }
                }

                RoundButton {
                    id: btn_u
                    text: "U"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_u.text
                    }
                }

                RoundButton {
                    id: btn_i
                    text: "I"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_i.text
                    }
                }

                RoundButton {
                    id: btn_o
                    text: "O"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_o.text
                    }
                }

                RoundButton {
                    id: btn_p
                    text: "P"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_p.text
                    }
                }

                RoundButton {
                    text: "Clear"
                    width: 60
                    padding: 10
                    id: btn_clear

                    onClicked: user_entry.clear()

                }

            }
        }


        Row {
                id: row3
                width: column.width
                spacing: 5
                RoundButton {
                    id: btn_a
                    text: "A"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_a.text
                    }
                }

                RoundButton {
                    id: btn_s
                    text: "S"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_s.text
                    }
                }

                RoundButton {
                    id: btn_d
                    text: "D"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_d.text
                    }
                }

                RoundButton {
                    id: btn_f
                    text: "F"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_f.text
                    }
                }

                RoundButton {
                    id: btn_g
                    text: "G"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_g.text
                    }
                }

                RoundButton {
                    id: btn_h
                    text: "H"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_h.text
                    }
                }

                RoundButton {
                    id: btn_j
                    text: "J"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_j.text
                    }
                }

                RoundButton {
                    id: btn_k
                    text: "K"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_k.text
                    }
                }

                RoundButton {
                    id: btn_l
                    text: "L"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_l.text
                    }
                }

            }

            Row {
                spacing: 5
                RoundButton {
                    id: btn_z
                    text: "Z"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_z.text
                    }
                }

                RoundButton {
                    id: btn_x
                    text: "X"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_x.text
                    }
                }

                RoundButton {
                    id: btn_c
                    text: "C"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_c.text
                    }
                }

                RoundButton {
                    id: btn_v
                    text: "V"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_v.text
                    }
                }

                RoundButton {
                    id: btn_b
                    text: "B"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_b.text
                    }
                }

                RoundButton {
                    id: btn_n
                    text: "N"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_n.text
                    }
                }

                RoundButton {
                    id: btn_m
                    text: "M"
                    onClicked: {
                        user_entry.text = user_entry.text + btn_m.text
                    }
                }

                RoundButton {
                    id: btn_comma
                    text: ","
                    onClicked: {
                        user_entry.text = user_entry.text + btn_comma.text
                    }
                }

                RoundButton {
                    id: btn_dot
                    text: "."
                    onClicked: {
                        user_entry.text = user_entry.text + btn_dot.text
                    }
                }

                RoundButton {
//                    visible: false
                    opacity: 0
                }

                RoundButton {
                    text: "Prev"
                    width: 60
                    padding: 10

                }
            }


            Row {
                id: row
                width: column.width
                spacing: 70

                RoundButton {
                    width: 300
                    id: btn_space
                    text: "Space"
                    onClicked: {
                        user_entry.text = user_entry.text + " "
                    }
                }

                RoundButton {
                    padding: 10
                    id: roundButton25
                    text: "Next"
                    width: 60
                }
            }

        }


}
