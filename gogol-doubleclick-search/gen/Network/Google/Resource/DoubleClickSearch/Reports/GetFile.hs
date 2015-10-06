{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.DoubleClickSearch.Reports.GetFile
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Downloads a report file encoded in UTF-8.
--
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference> for @DoubleClicksearchReportsGetFile@.
module Network.Google.Resource.DoubleClickSearch.Reports.GetFile
    (
    -- * REST Resource
      ReportsGetFileResource

    -- * Creating a Request
    , reportsGetFile'
    , ReportsGetFile'

    -- * Request Lenses
    , rgfQuotaUser
    , rgfPrettyPrint
    , rgfUserIP
    , rgfReportId
    , rgfReportFragment
    , rgfKey
    , rgfOAuthToken
    , rgfFields
    ) where

import           Network.Google.DoubleClickSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClicksearchReportsGetFile@ which the
-- 'ReportsGetFile'' request conforms to.
type ReportsGetFileResource =
     "reports" :>
       Capture "reportId" Text :>
         "files" :>
           Capture "reportFragment" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] ()
       :<|>
       "reports" :>
         Capture "reportId" Text :>
           "files" :>
             Capture "reportFragment" Int32 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltMedia :> Get '[OctetStream] Body

-- | Downloads a report file encoded in UTF-8.
--
-- /See:/ 'reportsGetFile'' smart constructor.
data ReportsGetFile' = ReportsGetFile'
    { _rgfQuotaUser      :: !(Maybe Text)
    , _rgfPrettyPrint    :: !Bool
    , _rgfUserIP         :: !(Maybe Text)
    , _rgfReportId       :: !Text
    , _rgfReportFragment :: !Int32
    , _rgfKey            :: !(Maybe AuthKey)
    , _rgfOAuthToken     :: !(Maybe OAuthToken)
    , _rgfFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsGetFile'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgfQuotaUser'
--
-- * 'rgfPrettyPrint'
--
-- * 'rgfUserIP'
--
-- * 'rgfReportId'
--
-- * 'rgfReportFragment'
--
-- * 'rgfKey'
--
-- * 'rgfOAuthToken'
--
-- * 'rgfFields'
reportsGetFile'
    :: Text -- ^ 'reportId'
    -> Int32 -- ^ 'reportFragment'
    -> ReportsGetFile'
reportsGetFile' pRgfReportId_ pRgfReportFragment_ =
    ReportsGetFile'
    { _rgfQuotaUser = Nothing
    , _rgfPrettyPrint = True
    , _rgfUserIP = Nothing
    , _rgfReportId = pRgfReportId_
    , _rgfReportFragment = pRgfReportFragment_
    , _rgfKey = Nothing
    , _rgfOAuthToken = Nothing
    , _rgfFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rgfQuotaUser :: Lens' ReportsGetFile' (Maybe Text)
rgfQuotaUser
  = lens _rgfQuotaUser (\ s a -> s{_rgfQuotaUser = a})

-- | Returns response with indentations and line breaks.
rgfPrettyPrint :: Lens' ReportsGetFile' Bool
rgfPrettyPrint
  = lens _rgfPrettyPrint
      (\ s a -> s{_rgfPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rgfUserIP :: Lens' ReportsGetFile' (Maybe Text)
rgfUserIP
  = lens _rgfUserIP (\ s a -> s{_rgfUserIP = a})

-- | ID of the report.
rgfReportId :: Lens' ReportsGetFile' Text
rgfReportId
  = lens _rgfReportId (\ s a -> s{_rgfReportId = a})

-- | The index of the report fragment to download.
rgfReportFragment :: Lens' ReportsGetFile' Int32
rgfReportFragment
  = lens _rgfReportFragment
      (\ s a -> s{_rgfReportFragment = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rgfKey :: Lens' ReportsGetFile' (Maybe AuthKey)
rgfKey = lens _rgfKey (\ s a -> s{_rgfKey = a})

-- | OAuth 2.0 token for the current user.
rgfOAuthToken :: Lens' ReportsGetFile' (Maybe OAuthToken)
rgfOAuthToken
  = lens _rgfOAuthToken
      (\ s a -> s{_rgfOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rgfFields :: Lens' ReportsGetFile' (Maybe Text)
rgfFields
  = lens _rgfFields (\ s a -> s{_rgfFields = a})

instance GoogleAuth ReportsGetFile' where
        authKey = rgfKey . _Just
        authToken = rgfOAuthToken . _Just

instance GoogleRequest ReportsGetFile' where
        type Rs ReportsGetFile' = ()
        request = requestWith doubleClickSearchRequest
        requestWith rq ReportsGetFile'{..}
          = go _rgfReportId _rgfReportFragment _rgfQuotaUser
              (Just _rgfPrettyPrint)
              _rgfUserIP
              _rgfFields
              _rgfKey
              _rgfOAuthToken
              (Just AltJSON)
          where go :<|> _
                  = clientBuild (Proxy :: Proxy ReportsGetFileResource)
                      rq

instance GoogleRequest
         (MediaDownload ReportsGetFile') where
        type Rs (MediaDownload ReportsGetFile') = Body
        request = requestWith doubleClickSearchRequest
        requestWith rq (MediaDownload ReportsGetFile'{..})
          = go _rgfReportId _rgfReportFragment _rgfQuotaUser
              (Just _rgfPrettyPrint)
              _rgfUserIP
              _rgfFields
              _rgfKey
              _rgfOAuthToken
              (Just AltMedia)
          where _ :<|> go
                  = clientBuild (Proxy :: Proxy ReportsGetFileResource)
                      rq
