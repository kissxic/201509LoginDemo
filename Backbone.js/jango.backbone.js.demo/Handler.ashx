﻿<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.IO;
using System.Net;
using System.Web;

public class Handler : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";

        var webRequest = (HttpWebRequest)WebRequest.Create("http://www.cnblogs.com");
        var stream = webRequest.GetResponse().GetResponseStream();
        if (stream != null)
        {
            var streamReader = new StreamReader(stream);
            context.Response.Write(streamReader.ReadToEnd());
        }
        else
        {
            context.Response.Write("Hello World");
        }
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}