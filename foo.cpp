#include <iostream>
#include <boost/asio.hpp>
#include <boost/bind.hpp>
#include <boost/date_time/posix_time/posix_time.hpp>

using namespace std;

void print(const boost::system::error_code& /*e*/, boost::asio::deadline_timer* t, int* count)
{
	std::cout << "Hello, world!" << *count << std::endl;

	t->expires_at(t->expires_at() + boost::posix_time::seconds(1));
    t->async_wait(boost::bind(print,
          boost::asio::placeholders::error, t, count));

	(*count) ++;
}

int main()
{
	int count = 0;
	boost::asio::io_service io;

	boost::asio::deadline_timer t(io, boost::posix_time::seconds(0));

	t.async_wait(boost::bind(print,
        boost::asio::placeholders::error, &t, &count));

	io.run();

	return 0;
}