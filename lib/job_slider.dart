import 'package:flutter/material.dart';
import 'model/job.dart';

class JobSlider extends StatelessWidget {
  // final List<Movie> movieList = Movie.getMovies();
  final List<Job> jobList = Job.getJob();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
      child: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Untuk Kamu',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              Text(
                'Lihat Semua',
                style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline
                ),
              ),
            ],
          ),
          Container(
            height: 190.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: jobList.length,
                itemBuilder: (BuildContext context, int index) {
                  return jobCardTemplate(jobList[index], context);
                }),
          ),
          Container(
            padding: EdgeInsets.only(top: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lowongan Terbaru',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget jobCardTemplate(Job job, BuildContext context) {
  return InkWell(
    child: Container(
      width: 320.0,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))
        ),
        elevation: 1,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        job.title,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17.5
                        ),
                      ),
                      Text(
                        job.salary,
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 15
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.bookmark_border_outlined)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        child: Image(
                          image: AssetImage(
                            job.companyImage,
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            job.company,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            job.location,
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Text(job.publishedAt)
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}