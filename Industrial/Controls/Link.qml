import QtQuick 2.6

Label {
    id: control

    onLinkActivated: Qt.openUrlExternally(link)
    linkColor: industrial.colors.link

    MouseArea {
        anchors.fill: control
        acceptedButtons: Qt.NoButton
        cursorShape: control.hoveredLink ? Qt.PointingHandCursor : Qt.ArrowCursor
    }
}
