function addBox(sourceElement, msg, type)
    if sourceElement.type ~= "player" then
        if isElement(sourceElement:getData("inventory.open2")) or isElement(sourceElement:getData("inventory.open")) then
            sourceElement = sourceElement:getData("inventory.open2") or sourceElement:getData("inventory.open")
        end
    end
    
    triggerClientEvent(sourceElement, "addBox", sourceElement, msg, type)
end
addEvent("addBox", true)
addEventHandler("addBox", root, addBox)