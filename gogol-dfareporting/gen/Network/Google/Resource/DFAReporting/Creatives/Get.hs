{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
    , crerUserIp
    , crerProfileId
    , crerKey
    , crerId
    , crerOauthToken
    , crerFields
    , crerAlt
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
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Creative

-- | Gets one creative by ID.
--
-- /See:/ 'creativesGet'' smart constructor.
data CreativesGet' = CreativesGet'
    { _crerQuotaUser   :: !(Maybe Text)
    , _crerPrettyPrint :: !Bool
    , _crerUserIp      :: !(Maybe Text)
    , _crerProfileId   :: !Int64
    , _crerKey         :: !(Maybe Text)
    , _crerId          :: !Int64
    , _crerOauthToken  :: !(Maybe Text)
    , _crerFields      :: !(Maybe Text)
    , _crerAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crerQuotaUser'
--
-- * 'crerPrettyPrint'
--
-- * 'crerUserIp'
--
-- * 'crerProfileId'
--
-- * 'crerKey'
--
-- * 'crerId'
--
-- * 'crerOauthToken'
--
-- * 'crerFields'
--
-- * 'crerAlt'
creativesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> CreativesGet'
creativesGet' pCrerProfileId_ pCrerId_ =
    CreativesGet'
    { _crerQuotaUser = Nothing
    , _crerPrettyPrint = True
    , _crerUserIp = Nothing
    , _crerProfileId = pCrerProfileId_
    , _crerKey = Nothing
    , _crerId = pCrerId_
    , _crerOauthToken = Nothing
    , _crerFields = Nothing
    , _crerAlt = JSON
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
crerUserIp :: Lens' CreativesGet' (Maybe Text)
crerUserIp
  = lens _crerUserIp (\ s a -> s{_crerUserIp = a})

-- | User profile ID associated with this request.
crerProfileId :: Lens' CreativesGet' Int64
crerProfileId
  = lens _crerProfileId
      (\ s a -> s{_crerProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
crerKey :: Lens' CreativesGet' (Maybe Text)
crerKey = lens _crerKey (\ s a -> s{_crerKey = a})

-- | Creative ID.
crerId :: Lens' CreativesGet' Int64
crerId = lens _crerId (\ s a -> s{_crerId = a})

-- | OAuth 2.0 token for the current user.
crerOauthToken :: Lens' CreativesGet' (Maybe Text)
crerOauthToken
  = lens _crerOauthToken
      (\ s a -> s{_crerOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
crerFields :: Lens' CreativesGet' (Maybe Text)
crerFields
  = lens _crerFields (\ s a -> s{_crerFields = a})

-- | Data format for the response.
crerAlt :: Lens' CreativesGet' Alt
crerAlt = lens _crerAlt (\ s a -> s{_crerAlt = a})

instance GoogleRequest CreativesGet' where
        type Rs CreativesGet' = Creative
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativesGet'{..}
          = go _crerQuotaUser (Just _crerPrettyPrint)
              _crerUserIp
              _crerProfileId
              _crerKey
              _crerId
              _crerOauthToken
              _crerFields
              (Just _crerAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativesGetResource)
                      r
                      u
