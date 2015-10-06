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
-- Module      : Network.Google.Resource.DFAReporting.Metros.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of metros.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingMetrosList@.
module Network.Google.Resource.DFAReporting.Metros.List
    (
    -- * REST Resource
      MetrosListResource

    -- * Creating a Request
    , metrosList'
    , MetrosList'

    -- * Request Lenses
    , mlQuotaUser
    , mlPrettyPrint
    , mlUserIP
    , mlProFileId
    , mlKey
    , mlOAuthToken
    , mlFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingMetrosList@ which the
-- 'MetrosList'' request conforms to.
type MetrosListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "metros" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] MetrosListResponse

-- | Retrieves a list of metros.
--
-- /See:/ 'metrosList'' smart constructor.
data MetrosList' = MetrosList'
    { _mlQuotaUser   :: !(Maybe Text)
    , _mlPrettyPrint :: !Bool
    , _mlUserIP      :: !(Maybe Text)
    , _mlProFileId   :: !Int64
    , _mlKey         :: !(Maybe AuthKey)
    , _mlOAuthToken  :: !(Maybe OAuthToken)
    , _mlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetrosList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlQuotaUser'
--
-- * 'mlPrettyPrint'
--
-- * 'mlUserIP'
--
-- * 'mlProFileId'
--
-- * 'mlKey'
--
-- * 'mlOAuthToken'
--
-- * 'mlFields'
metrosList'
    :: Int64 -- ^ 'profileId'
    -> MetrosList'
metrosList' pMlProFileId_ =
    MetrosList'
    { _mlQuotaUser = Nothing
    , _mlPrettyPrint = True
    , _mlUserIP = Nothing
    , _mlProFileId = pMlProFileId_
    , _mlKey = Nothing
    , _mlOAuthToken = Nothing
    , _mlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mlQuotaUser :: Lens' MetrosList' (Maybe Text)
mlQuotaUser
  = lens _mlQuotaUser (\ s a -> s{_mlQuotaUser = a})

-- | Returns response with indentations and line breaks.
mlPrettyPrint :: Lens' MetrosList' Bool
mlPrettyPrint
  = lens _mlPrettyPrint
      (\ s a -> s{_mlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mlUserIP :: Lens' MetrosList' (Maybe Text)
mlUserIP = lens _mlUserIP (\ s a -> s{_mlUserIP = a})

-- | User profile ID associated with this request.
mlProFileId :: Lens' MetrosList' Int64
mlProFileId
  = lens _mlProFileId (\ s a -> s{_mlProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mlKey :: Lens' MetrosList' (Maybe AuthKey)
mlKey = lens _mlKey (\ s a -> s{_mlKey = a})

-- | OAuth 2.0 token for the current user.
mlOAuthToken :: Lens' MetrosList' (Maybe OAuthToken)
mlOAuthToken
  = lens _mlOAuthToken (\ s a -> s{_mlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mlFields :: Lens' MetrosList' (Maybe Text)
mlFields = lens _mlFields (\ s a -> s{_mlFields = a})

instance GoogleAuth MetrosList' where
        _AuthKey = mlKey . _Just
        _AuthToken = mlOAuthToken . _Just

instance GoogleRequest MetrosList' where
        type Rs MetrosList' = MetrosListResponse
        request = requestWith dFAReportingRequest
        requestWith rq MetrosList'{..}
          = go _mlProFileId _mlQuotaUser (Just _mlPrettyPrint)
              _mlUserIP
              _mlFields
              _mlKey
              _mlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy MetrosListResource) rq
