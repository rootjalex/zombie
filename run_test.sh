#!/bin/bash
rm -rf results; mkdir results

rm -rf build; mkdir build; cd build;
cmake -B . -DFCPW_USE_PQUEUE=OFF -DFCPW_USE_STACK=OFF -DFCPW_USE_PQVEC=OFF -DFCPW_USE_EIGHT_WIDE_BRANCHING=OFF ..
make -j8 &> ../results/build_original_wide4.txt
./demo/demo ../demo/scenes/engine/wost.json &> ../results/test_original_wide4.txt
mv ../demo/scenes/engine/solutions/wost_color.pfm ../results/wost_color_original_wide4.pfm

cd ..; rm -rf build; mkdir build; cd build;
cmake -B . -DFCPW_USE_PQUEUE=ON -DFCPW_USE_STACK=OFF -DFCPW_USE_PQVEC=OFF -DFCPW_USE_EIGHT_WIDE_BRANCHING=OFF ..
make -j8 &> ../results/build_pqueue_vector_wide4.txt
./demo/demo ../demo/scenes/engine/wost.json &> ../results/test_pqueue_vector_wide4.txt
mv ../demo/scenes/engine/solutions/wost_color.pfm ../results/wost_color_pqueue_vector_wide4.pfm

cd ..; rm -rf build; mkdir build; cd build;
cmake -B . -DFCPW_USE_PQUEUE=OFF -DFCPW_USE_STACK=ON -DFCPW_USE_PQVEC=OFF -DFCPW_USE_EIGHT_WIDE_BRANCHING=OFF ..
make -j8 &> ../results/build_stack_wide4.txt
./demo/demo ../demo/scenes/engine/wost.json &> ../results/test_stack_wide4.txt
mv ../demo/scenes/engine/solutions/wost_color.pfm ../results/wost_color_stack_wide4.pfm

cd ..; rm -rf build; mkdir build; cd build;
cmake -B . -DFCPW_USE_PQUEUE=ON -DFCPW_USE_STACK=OFF -DFCPW_USE_PQVEC=ON -DFCPW_USE_EIGHT_WIDE_BRANCHING=OFF ..
make -j8 &> ../results/build_pqvec_wide4.txt
./demo/demo ../demo/scenes/engine/wost.json &> ../results/test_pqvec_wide4.txt
mv ../demo/scenes/engine/solutions/wost_color.pfm ../results/wost_color_pqvec_wide4.pfm

cd ..; rm -rf build; mkdir build; cd build;
cmake -B . -DFCPW_USE_PQUEUE=OFF -DFCPW_USE_STACK=OFF -DFCPW_USE_EIGHT_WIDE_BRANCHING=ON ..
make -j8 &> ../results/build_original_wide8.txt
./demo/demo ../demo/scenes/engine/wost.json &> ../results/test_original_wide8.txt
mv ../demo/scenes/engine/solutions/wost_color.pfm ../results/wost_color_original_wide8.pfm

cd ..; rm -rf build; mkdir build; cd build;
cmake -B . -DFCPW_USE_PQUEUE=ON -DFCPW_USE_STACK=OFF -DFCPW_USE_EIGHT_WIDE_BRANCHING=ON ..
make -j8 &> ../results/build_pqueue_vector_wide8.txt
./demo/demo ../demo/scenes/engine/wost.json &> ../results/test_pqueue_vector_wide8.txt
mv ../demo/scenes/engine/solutions/wost_color.pfm ../results/wost_color_pqueue_vector_wide8.pfm

cd ..; rm -rf build; mkdir build; cd build;
cmake -B . -DFCPW_USE_PQUEUE=OFF -DFCPW_USE_STACK=ON -DFCPW_USE_EIGHT_WIDE_BRANCHING=ON ..
make -j8 &> ../results/build_stack_wide8.txt
./demo/demo ../demo/scenes/engine/wost.json &> ../results/test_stack_wide8.txt
mv ../demo/scenes/engine/solutions/wost_color.pfm ../results/wost_color_stack_wide8.pfm

cd ..; rm -rf build; mkdir build; cd build;
cmake -B . -DFCPW_USE_PQUEUE=ON -DFCPW_USE_STACK=OFF -DFCPW_USE_PQVEC=ON -DFCPW_USE_EIGHT_WIDE_BRANCHING=ON ..
make -j8 &> ../results/build_pqvec_wide8.txt
./demo/demo ../demo/scenes/engine/wost.json &> ../results/test_pqvec_wide8.txt
mv ../demo/scenes/engine/solutions/wost_color.pfm ../results/wost_color_pqvec_wide8.pfm
