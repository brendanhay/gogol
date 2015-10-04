{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Creatives.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one creative by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativesGet@.
module Network.Google.Resource.DFAReporting.Creatives.Get
    (
    -- * REST Resource
      CreativesGetResource

    -- * Creating a Request
    , creativesGet'
    , CreativesGet'

    -- * Request Lenses
    , crerQuotaUser
    , crerPrettyPrint
    , crerUserIP
    , crerProFileId
    , crerKey
    , crerId
    , crerOAuthToken
    , crerFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativesGet@ which the
-- 'CreativesGet'' request conforms to.
type CreativesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creatives" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Creative

-- | Gets one creative by ID.
--
-- /See:/ 'creativesGet'' smart constructor.
data CreativesGet' = CreativesGet'
    { _crerQuotaUser   :: !(Maybe Text)
    , _crerPrettyPrint :: !Bool
    , _crerUserIP      :: !(Maybe Text)
    , _crerProFileId   :: !Int64
    , _crerKey         :: !(Maybe Key)
    , _crerId          :: !Int64
    , _crerOAuthToken  :: !(Maybe OAuthToken)
    , _crerFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crerQuotaUser'
--
-- * 'crerPrettyPrint'
--
-- * 'crerUserIP'
--
-- * 'crerProFileId'
--
-- * 'crerKey'
--
-- * 'crerId'
--
-- * 'crerOAuthToken'
--
-- * 'crerFields'
creativesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> CreativesGet'
creativesGet' pCrerProFileId_ pCrerId_ =
    CreativesGet'
    { _crerQuotaUser = Nothing
    , _crerPrettyPrint = True
    , _crerUserIP = Nothing
    , _crerProFileId = pCrerProFileId_
    , _crerKey = Nothing
    , _crerId = pCrerId_
    , _crerOAuthToken = Nothing
    , _crerFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
crerQuotaUser :: Lens' CreativesGet' (Maybe Text)
crerQuotaUser
  = lens _crerQuotaUser
      (\ s a -> s{_crerQuotaUser = a})

-- | Returns response with indentations and line breaks.
crerPrettyPrint :: Lens' CreativesGet' Bool
crerPrettyPrint
  = lens _crerPrettyPrint
      (\ s a -> s{_crerPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
crerUserIP :: Lens' CreativesGet' (Maybe Text)
crerUserIP
  = lens _crerUserIP (\ s a -> s{_crerUserIP = a})

-- | User profile ID associated with this request.
crerProFileId :: Lens' CreativesGet' Int64
crerProFileId
  = lens _crerProFileId
      (\ s a -> s{_crerProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
crerKey :: Lens' CreativesGet' (Maybe Key)
crerKey = lens _crerKey (\ s a -> s{_crerKey = a})

-- | Creative ID.
crerId :: Lens' CreativesGet' Int64
crerId = lens _crerId (\ s a -> s{_crerId = a})

-- | OAuth 2.0 token for the current user.
crerOAuthToken :: Lens' CreativesGet' (Maybe OAuthToken)
crerOAuthToken
  = lens _crerOAuthToken
      (\ s a -> s{_crerOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
crerFields :: Lens' CreativesGet' (Maybe Text)
crerFields
  = lens _crerFields (\ s a -> s{_crerFields = a})

instance GoogleAuth CreativesGet' where
        authKey = crerKey . _Just
        authToken = crerOAuthToken . _Just

instance GoogleRequest CreativesGet' where
        type Rs CreativesGet' = Creative
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativesGet'{..}
          = go _crerProFileId _crerId _crerQuotaUser
              (Just _crerPrettyPrint)
              _crerUserIP
              _crerFields
              _crerKey
              _crerOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativesGetResource)
                      r
                      u
