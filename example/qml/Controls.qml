import QtQuick 2.6
import QtQuick.Layouts 1.3
import Industrial.Controls 1.0

ColumnLayout {
    id: root

    spacing: 0

    TabBar {
        id: tabBar
        Layout.fillWidth: true
        Layout.rightMargin: industrial.baseSize + industrial.padding
        z: 1

        TabButton { text: "Buttons" }
        TabButton { text: "Edits" }
        TabButton { text: "Inputs" }
        TabButton { text: "Misc" }
        TabButton { text: "Menu" }
        TabButton { text: "Disabled"; enabled: false }
    }

    StackLayout {
        currentIndex: tabBar.currentIndex
        Layout.fillWidth: true
        Layout.fillHeight: true

        Buttons {}
        Edits {}
        Inputs {}
        Misc {}
        Menus {}
    }
}
