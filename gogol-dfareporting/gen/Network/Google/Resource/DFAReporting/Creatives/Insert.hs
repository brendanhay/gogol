{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Creatives.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new creative.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativesInsert@.
module DFAReporting.Creatives.Insert
    (
    -- * REST Resource
      CreativesInsertAPI

    -- * Creating a Request
    , creativesInsert
    , CreativesInsert

    -- * Request Lenses
    , creQuotaUser
    , crePrettyPrint
    , creUserIp
    , creProfileId
    , creKey
    , creOauthToken
    , creFields
    , creAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativesInsert@ which the
-- 'CreativesInsert' request conforms to.
type CreativesInsertAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creatives" :> Post '[JSON] Creative

-- | Inserts a new creative.
--
-- /See:/ 'creativesInsert' smart constructor.
data CreativesInsert = CreativesInsert
    { _creQuotaUser   :: !(Maybe Text)
    , _crePrettyPrint :: !Bool
    , _creUserIp      :: !(Maybe Text)
    , _creProfileId   :: !Int64
    , _creKey         :: !(Maybe Text)
    , _creOauthToken  :: !(Maybe Text)
    , _creFields      :: !(Maybe Text)
    , _creAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'creQuotaUser'
--
-- * 'crePrettyPrint'
--
-- * 'creUserIp'
--
-- * 'creProfileId'
--
-- * 'creKey'
--
-- * 'creOauthToken'
--
-- * 'creFields'
--
-- * 'creAlt'
creativesInsert
    :: Int64 -- ^ 'profileId'
    -> CreativesInsert
creativesInsert pCreProfileId_ =
    CreativesInsert
    { _creQuotaUser = Nothing
    , _crePrettyPrint = True
    , _creUserIp = Nothing
    , _creProfileId = pCreProfileId_
    , _creKey = Nothing
    , _creOauthToken = Nothing
    , _creFields = Nothing
    , _creAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
creQuotaUser :: Lens' CreativesInsert' (Maybe Text)
creQuotaUser
  = lens _creQuotaUser (\ s a -> s{_creQuotaUser = a})

-- | Returns response with indentations and line breaks.
crePrettyPrint :: Lens' CreativesInsert' Bool
crePrettyPrint
  = lens _crePrettyPrint
      (\ s a -> s{_crePrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
creUserIp :: Lens' CreativesInsert' (Maybe Text)
creUserIp
  = lens _creUserIp (\ s a -> s{_creUserIp = a})

-- | User profile ID associated with this request.
creProfileId :: Lens' CreativesInsert' Int64
creProfileId
  = lens _creProfileId (\ s a -> s{_creProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
creKey :: Lens' CreativesInsert' (Maybe Text)
creKey = lens _creKey (\ s a -> s{_creKey = a})

-- | OAuth 2.0 token for the current user.
creOauthToken :: Lens' CreativesInsert' (Maybe Text)
creOauthToken
  = lens _creOauthToken
      (\ s a -> s{_creOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
creFields :: Lens' CreativesInsert' (Maybe Text)
creFields
  = lens _creFields (\ s a -> s{_creFields = a})

-- | Data format for the response.
creAlt :: Lens' CreativesInsert' Text
creAlt = lens _creAlt (\ s a -> s{_creAlt = a})

instance GoogleRequest CreativesInsert' where
        type Rs CreativesInsert' = Creative
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativesInsert{..}
          = go _creQuotaUser _crePrettyPrint _creUserIp
              _creProfileId
              _creKey
              _creOauthToken
              _creFields
              _creAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CreativesInsertAPI)
                      r
                      u
