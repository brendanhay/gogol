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
-- Module      : Network.Google.Resource.DFAReporting.Browsers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of browsers.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingBrowsersList@.
module Network.Google.Resource.DFAReporting.Browsers.List
    (
    -- * REST Resource
      BrowsersListResource

    -- * Creating a Request
    , browsersList'
    , BrowsersList'

    -- * Request Lenses
    , blQuotaUser
    , blPrettyPrint
    , blUserIP
    , blProFileId
    , blKey
    , blOAuthToken
    , blFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingBrowsersList@ which the
-- 'BrowsersList'' request conforms to.
type BrowsersListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "browsers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] BrowsersListResponse

-- | Retrieves a list of browsers.
--
-- /See:/ 'browsersList'' smart constructor.
data BrowsersList' = BrowsersList'
    { _blQuotaUser   :: !(Maybe Text)
    , _blPrettyPrint :: !Bool
    , _blUserIP      :: !(Maybe Text)
    , _blProFileId   :: !Int64
    , _blKey         :: !(Maybe AuthKey)
    , _blOAuthToken  :: !(Maybe OAuthToken)
    , _blFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BrowsersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blQuotaUser'
--
-- * 'blPrettyPrint'
--
-- * 'blUserIP'
--
-- * 'blProFileId'
--
-- * 'blKey'
--
-- * 'blOAuthToken'
--
-- * 'blFields'
browsersList'
    :: Int64 -- ^ 'profileId'
    -> BrowsersList'
browsersList' pBlProFileId_ =
    BrowsersList'
    { _blQuotaUser = Nothing
    , _blPrettyPrint = True
    , _blUserIP = Nothing
    , _blProFileId = pBlProFileId_
    , _blKey = Nothing
    , _blOAuthToken = Nothing
    , _blFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
blQuotaUser :: Lens' BrowsersList' (Maybe Text)
blQuotaUser
  = lens _blQuotaUser (\ s a -> s{_blQuotaUser = a})

-- | Returns response with indentations and line breaks.
blPrettyPrint :: Lens' BrowsersList' Bool
blPrettyPrint
  = lens _blPrettyPrint
      (\ s a -> s{_blPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
blUserIP :: Lens' BrowsersList' (Maybe Text)
blUserIP = lens _blUserIP (\ s a -> s{_blUserIP = a})

-- | User profile ID associated with this request.
blProFileId :: Lens' BrowsersList' Int64
blProFileId
  = lens _blProFileId (\ s a -> s{_blProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
blKey :: Lens' BrowsersList' (Maybe AuthKey)
blKey = lens _blKey (\ s a -> s{_blKey = a})

-- | OAuth 2.0 token for the current user.
blOAuthToken :: Lens' BrowsersList' (Maybe OAuthToken)
blOAuthToken
  = lens _blOAuthToken (\ s a -> s{_blOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
blFields :: Lens' BrowsersList' (Maybe Text)
blFields = lens _blFields (\ s a -> s{_blFields = a})

instance GoogleAuth BrowsersList' where
        authKey = blKey . _Just
        authToken = blOAuthToken . _Just

instance GoogleRequest BrowsersList' where
        type Rs BrowsersList' = BrowsersListResponse
        request = requestWith dFAReportingRequest
        requestWith rq BrowsersList'{..}
          = go _blProFileId _blQuotaUser (Just _blPrettyPrint)
              _blUserIP
              _blFields
              _blKey
              _blOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy BrowsersListResource)
                      rq
