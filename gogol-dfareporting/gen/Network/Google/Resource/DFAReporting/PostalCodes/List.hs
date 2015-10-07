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
-- Module      : Network.Google.Resource.DFAReporting.PostalCodes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of postal codes.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPostalCodesList@.
module Network.Google.Resource.DFAReporting.PostalCodes.List
    (
    -- * REST Resource
      PostalCodesListResource

    -- * Creating a Request
    , postalCodesList'
    , PostalCodesList'

    -- * Request Lenses
    , pclQuotaUser
    , pclPrettyPrint
    , pclUserIP
    , pclProFileId
    , pclKey
    , pclOAuthToken
    , pclFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPostalCodesList@ method which the
-- 'PostalCodesList'' request conforms to.
type PostalCodesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "postalCodes" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] PostalCodesListResponse

-- | Retrieves a list of postal codes.
--
-- /See:/ 'postalCodesList'' smart constructor.
data PostalCodesList' = PostalCodesList'
    { _pclQuotaUser   :: !(Maybe Text)
    , _pclPrettyPrint :: !Bool
    , _pclUserIP      :: !(Maybe Text)
    , _pclProFileId   :: !Int64
    , _pclKey         :: !(Maybe AuthKey)
    , _pclOAuthToken  :: !(Maybe OAuthToken)
    , _pclFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostalCodesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pclQuotaUser'
--
-- * 'pclPrettyPrint'
--
-- * 'pclUserIP'
--
-- * 'pclProFileId'
--
-- * 'pclKey'
--
-- * 'pclOAuthToken'
--
-- * 'pclFields'
postalCodesList'
    :: Int64 -- ^ 'profileId'
    -> PostalCodesList'
postalCodesList' pPclProFileId_ =
    PostalCodesList'
    { _pclQuotaUser = Nothing
    , _pclPrettyPrint = True
    , _pclUserIP = Nothing
    , _pclProFileId = pPclProFileId_
    , _pclKey = Nothing
    , _pclOAuthToken = Nothing
    , _pclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pclQuotaUser :: Lens' PostalCodesList' (Maybe Text)
pclQuotaUser
  = lens _pclQuotaUser (\ s a -> s{_pclQuotaUser = a})

-- | Returns response with indentations and line breaks.
pclPrettyPrint :: Lens' PostalCodesList' Bool
pclPrettyPrint
  = lens _pclPrettyPrint
      (\ s a -> s{_pclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pclUserIP :: Lens' PostalCodesList' (Maybe Text)
pclUserIP
  = lens _pclUserIP (\ s a -> s{_pclUserIP = a})

-- | User profile ID associated with this request.
pclProFileId :: Lens' PostalCodesList' Int64
pclProFileId
  = lens _pclProFileId (\ s a -> s{_pclProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pclKey :: Lens' PostalCodesList' (Maybe AuthKey)
pclKey = lens _pclKey (\ s a -> s{_pclKey = a})

-- | OAuth 2.0 token for the current user.
pclOAuthToken :: Lens' PostalCodesList' (Maybe OAuthToken)
pclOAuthToken
  = lens _pclOAuthToken
      (\ s a -> s{_pclOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pclFields :: Lens' PostalCodesList' (Maybe Text)
pclFields
  = lens _pclFields (\ s a -> s{_pclFields = a})

instance GoogleAuth PostalCodesList' where
        _AuthKey = pclKey . _Just
        _AuthToken = pclOAuthToken . _Just

instance GoogleRequest PostalCodesList' where
        type Rs PostalCodesList' = PostalCodesListResponse
        request = requestWith dFAReportingRequest
        requestWith rq PostalCodesList'{..}
          = go _pclProFileId _pclQuotaUser
              (Just _pclPrettyPrint)
              _pclUserIP
              _pclFields
              _pclKey
              _pclOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy PostalCodesListResource)
                      rq
