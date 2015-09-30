{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference> for @DoubleclicksearchReportsGetFile@.
module DoubleClickSearch.Reports.GetFile
    (
    -- * REST Resource
      ReportsGetFileAPI

    -- * Creating a Request
    , reportsGetFile
    , ReportsGetFile

    -- * Request Lenses
    , rgfQuotaUser
    , rgfPrettyPrint
    , rgfUserIp
    , rgfReportId
    , rgfReportFragment
    , rgfKey
    , rgfOauthToken
    , rgfFields
    , rgfAlt
    ) where

import           Network.Google.DoubleClickSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleclicksearchReportsGetFile@ which the
-- 'ReportsGetFile' request conforms to.
type ReportsGetFileAPI =
     "reports" :>
       Capture "reportId" Text :>
         "files" :>
           Capture "reportFragment" Int32 :> Get '[JSON] ()

-- | Downloads a report file encoded in UTF-8.
--
-- /See:/ 'reportsGetFile' smart constructor.
data ReportsGetFile = ReportsGetFile
    { _rgfQuotaUser      :: !(Maybe Text)
    , _rgfPrettyPrint    :: !Bool
    , _rgfUserIp         :: !(Maybe Text)
    , _rgfReportId       :: !Text
    , _rgfReportFragment :: !Int32
    , _rgfKey            :: !(Maybe Text)
    , _rgfOauthToken     :: !(Maybe Text)
    , _rgfFields         :: !(Maybe Text)
    , _rgfAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsGetFile'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgfQuotaUser'
--
-- * 'rgfPrettyPrint'
--
-- * 'rgfUserIp'
--
-- * 'rgfReportId'
--
-- * 'rgfReportFragment'
--
-- * 'rgfKey'
--
-- * 'rgfOauthToken'
--
-- * 'rgfFields'
--
-- * 'rgfAlt'
reportsGetFile
    :: Text -- ^ 'reportId'
    -> Int32 -- ^ 'reportFragment'
    -> ReportsGetFile
reportsGetFile pRgfReportId_ pRgfReportFragment_ =
    ReportsGetFile
    { _rgfQuotaUser = Nothing
    , _rgfPrettyPrint = True
    , _rgfUserIp = Nothing
    , _rgfReportId = pRgfReportId_
    , _rgfReportFragment = pRgfReportFragment_
    , _rgfKey = Nothing
    , _rgfOauthToken = Nothing
    , _rgfFields = Nothing
    , _rgfAlt = "json"
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
rgfUserIp :: Lens' ReportsGetFile' (Maybe Text)
rgfUserIp
  = lens _rgfUserIp (\ s a -> s{_rgfUserIp = a})

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
rgfKey :: Lens' ReportsGetFile' (Maybe Text)
rgfKey = lens _rgfKey (\ s a -> s{_rgfKey = a})

-- | OAuth 2.0 token for the current user.
rgfOauthToken :: Lens' ReportsGetFile' (Maybe Text)
rgfOauthToken
  = lens _rgfOauthToken
      (\ s a -> s{_rgfOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rgfFields :: Lens' ReportsGetFile' (Maybe Text)
rgfFields
  = lens _rgfFields (\ s a -> s{_rgfFields = a})

-- | Data format for the response.
rgfAlt :: Lens' ReportsGetFile' Text
rgfAlt = lens _rgfAlt (\ s a -> s{_rgfAlt = a})

instance GoogleRequest ReportsGetFile' where
        type Rs ReportsGetFile' = ()
        request
          = requestWithRoute defReq doubleClickSearchURL
        requestWithRoute r u ReportsGetFile{..}
          = go _rgfQuotaUser _rgfPrettyPrint _rgfUserIp
              _rgfReportId
              _rgfReportFragment
              _rgfKey
              _rgfOauthToken
              _rgfFields
              _rgfAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ReportsGetFileAPI)
                      r
                      u
