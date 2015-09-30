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
-- Module      : Network.Google.Resource.Genomics.Referencesets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a reference set. Implements GlobalAllianceApi.getReferenceSet.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsReferencesetsGet@.
module Network.Google.Resource.Genomics.Referencesets.Get
    (
    -- * REST Resource
      ReferencesetsGetResource

    -- * Creating a Request
    , referencesetsGet'
    , ReferencesetsGet'

    -- * Request Lenses
    , rReferenceSetId
    , rQuotaUser
    , rPrettyPrint
    , rUserIp
    , rKey
    , rOauthToken
    , rFields
    , rAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReferencesetsGet@ which the
-- 'ReferencesetsGet'' request conforms to.
type ReferencesetsGetResource =
     "referencesets" :>
       Capture "referenceSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] ReferenceSet

-- | Gets a reference set. Implements GlobalAllianceApi.getReferenceSet.
--
-- /See:/ 'referencesetsGet'' smart constructor.
data ReferencesetsGet' = ReferencesetsGet'
    { _rReferenceSetId :: !Text
    , _rQuotaUser      :: !(Maybe Text)
    , _rPrettyPrint    :: !Bool
    , _rUserIp         :: !(Maybe Text)
    , _rKey            :: !(Maybe Text)
    , _rOauthToken     :: !(Maybe Text)
    , _rFields         :: !(Maybe Text)
    , _rAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferencesetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rReferenceSetId'
--
-- * 'rQuotaUser'
--
-- * 'rPrettyPrint'
--
-- * 'rUserIp'
--
-- * 'rKey'
--
-- * 'rOauthToken'
--
-- * 'rFields'
--
-- * 'rAlt'
referencesetsGet'
    :: Text -- ^ 'referenceSetId'
    -> ReferencesetsGet'
referencesetsGet' pRReferenceSetId_ =
    ReferencesetsGet'
    { _rReferenceSetId = pRReferenceSetId_
    , _rQuotaUser = Nothing
    , _rPrettyPrint = True
    , _rUserIp = Nothing
    , _rKey = Nothing
    , _rOauthToken = Nothing
    , _rFields = Nothing
    , _rAlt = JSON
    }

-- | The ID of the reference set.
rReferenceSetId :: Lens' ReferencesetsGet' Text
rReferenceSetId
  = lens _rReferenceSetId
      (\ s a -> s{_rReferenceSetId = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rQuotaUser :: Lens' ReferencesetsGet' (Maybe Text)
rQuotaUser
  = lens _rQuotaUser (\ s a -> s{_rQuotaUser = a})

-- | Returns response with indentations and line breaks.
rPrettyPrint :: Lens' ReferencesetsGet' Bool
rPrettyPrint
  = lens _rPrettyPrint (\ s a -> s{_rPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rUserIp :: Lens' ReferencesetsGet' (Maybe Text)
rUserIp = lens _rUserIp (\ s a -> s{_rUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rKey :: Lens' ReferencesetsGet' (Maybe Text)
rKey = lens _rKey (\ s a -> s{_rKey = a})

-- | OAuth 2.0 token for the current user.
rOauthToken :: Lens' ReferencesetsGet' (Maybe Text)
rOauthToken
  = lens _rOauthToken (\ s a -> s{_rOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rFields :: Lens' ReferencesetsGet' (Maybe Text)
rFields = lens _rFields (\ s a -> s{_rFields = a})

-- | Data format for the response.
rAlt :: Lens' ReferencesetsGet' Alt
rAlt = lens _rAlt (\ s a -> s{_rAlt = a})

instance GoogleRequest ReferencesetsGet' where
        type Rs ReferencesetsGet' = ReferenceSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReferencesetsGet'{..}
          = go _rReferenceSetId _rQuotaUser
              (Just _rPrettyPrint)
              _rUserIp
              _rKey
              _rOauthToken
              _rFields
              (Just _rAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReferencesetsGetResource)
                      r
                      u
