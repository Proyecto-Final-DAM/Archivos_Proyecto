package com.janicolas.CollectorServer.main;
//import com.janicolas.CollectorServer.controller.CommunityEventController;
//import com.janicolas.CollectorServer.controller.MainEventController;
//import com.janicolas.CollectorServer.controller.PuzzleController;
import com.janicolas.CollectorServer.controller.UserController;
import com.janicolas.CollectorServer.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.swing.*;
import java.awt.*;
import java.util.List;
@Component
public class PanelGenerator {
    private JFrame frame;
    private JPanel panelContainer, buttonContainer;
    private JScrollPane scrollPane;
    private JButton userButton, puzzleButton, mainEvButton, communityEvButton;
    @Autowired
    private UserController controller;

    public PanelGenerator() {
        frame = new JFrame("PuzzleCollector DB Editor");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setPreferredSize(new Dimension(550, 600));
        frame.setResizable(false);

        buttonContainer = new JPanel();
        buttonContainer.setLayout(new FlowLayout());
        userButton = new JButton("Edit Users");
        userButton.addActionListener(e -> createUsersPanel());
        puzzleButton = new JButton("Edit Puzzles");
        puzzleButton.addActionListener(e -> createPuzzlesPanel());
        mainEvButton = new JButton("Edit MainEvents");
        mainEvButton.addActionListener(e -> createMainEvPanel());
        communityEvButton = new JButton("Edit CommunityEvents");
        communityEvButton.addActionListener(e -> createCommunityEvPanel());

        buttonContainer.add(userButton);
        buttonContainer.add(puzzleButton);
        buttonContainer.add(mainEvButton);
        buttonContainer.add(communityEvButton);

        panelContainer = new JPanel();
        panelContainer.setLayout(new BoxLayout(panelContainer, BoxLayout.Y_AXIS));

        scrollPane = new JScrollPane(panelContainer);
        scrollPane.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);

        frame.add(buttonContainer, BorderLayout.NORTH);
        frame.add(scrollPane, BorderLayout.CENTER);
        frame.pack();
        frame.setVisible(true);
    }

    private void createUsersPanel() {
        List<User> users = controller.getUsers();
        //for(User user: controller.getUsers()){

        //}
        for(int i = 0;i<2;i++){
            JPanel panel = new JPanel(new FlowLayout());
            panel.setPreferredSize(new Dimension(520, 100)); // Fixed size
            panel.setMaximumSize(new Dimension(520, 100)); // Fixed size
            panel.setMinimumSize(new Dimension(520, 100)); // Fixed size
            panel.setBorder(BorderFactory.createLineBorder(Color.BLACK));

            panel.add(new JLabel(String.valueOf(users.get(i).getId())));
            panel.add(new JLabel(users.get(i).getUsername()));
            panel.add(new JLabel(users.get(i).getEmail()));
            panel.add(new JButton("Edit"));
            panel.add(new JButton("Delete"));

            panelContainer.add(Box.createRigidArea(new Dimension(0, 7))); // Add margin
            panelContainer.add(panel);
        }
        JButton addButton = new JButton("Add New User");
        addButton.addActionListener(e -> System.out.println("It Works!"));
        frame.add(addButton);
        frame.revalidate();
    }

    private void createPuzzlesPanel(){

    }

    private void createMainEvPanel(){

    }

    private void createCommunityEvPanel(){

    }
}
