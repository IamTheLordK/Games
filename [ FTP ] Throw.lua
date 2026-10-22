workspace.ChildAdded:Connect(function(v)
 if v.Name == "GrabParts" and not v.GrabPart.WeldConstraint.Part1.Anchored then local Part = v.GrabPart.WeldConstraint.Part1
  v.Destroying:Wait()
  if game:GetService("UserInputService"):GetLastInputType() == Enum.UserInputType.MouseButton2 then task.wait()
   Part.AssemblyLinearVelocity = workspace.CurrentCamera.CFrame.LookVector * 400
  end
 end
end)
