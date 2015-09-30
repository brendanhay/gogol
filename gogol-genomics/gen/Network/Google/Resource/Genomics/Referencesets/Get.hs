{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Genomics.Referencesets.Get
    (
    -- * REST Resource
      ReferencesetsGetAPI

    -- * Creating a Request
    , referencesetsGet
    , ReferencesetsGet

    -- * Request Lenses
    , refReferenceSetId
    , refQuotaUser
    , refPrettyPrint
    , refUserIp
    , refKey
    , refOauthToken
    , refFields
    , refAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReferencesetsGet@ which the
-- 'ReferencesetsGet' request conforms to.
type ReferencesetsGetAPI =
     "referencesets" :>
       Capture "referenceSetId" Text :>
         Get '[JSON] ReferenceSet

-- | Gets a reference set. Implements GlobalAllianceApi.getReferenceSet.
--
-- /See:/ 'referencesetsGet' smart constructor.
data ReferencesetsGet = ReferencesetsGet
    { _refReferenceSetId :: !Text
    , _refQuotaUser      :: !(Maybe Text)
    , _refPrettyPrint    :: !Bool
    , _refUserIp         :: !(Maybe Text)
    , _refKey            :: !(Maybe Text)
    , _refOauthToken     :: !(Maybe Text)
    , _refFields         :: !(Maybe Text)
    , _refAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferencesetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'refReferenceSetId'
--
-- * 'refQuotaUser'
--
-- * 'refPrettyPrint'
--
-- * 'refUserIp'
--
-- * 'refKey'
--
-- * 'refOauthToken'
--
-- * 'refFields'
--
-- * 'refAlt'
referencesetsGet
    :: Text -- ^ 'referenceSetId'
    -> ReferencesetsGet
referencesetsGet pRefReferenceSetId_ =
    ReferencesetsGet
    { _refReferenceSetId = pRefReferenceSetId_
    , _refQuotaUser = Nothing
    , _refPrettyPrint = True
    , _refUserIp = Nothing
    , _refKey = Nothing
    , _refOauthToken = Nothing
    , _refFields = Nothing
    , _refAlt = "json"
    }

-- | The ID of the reference set.
refReferenceSetId :: Lens' ReferencesetsGet' Text
refReferenceSetId
  = lens _refReferenceSetId
      (\ s a -> s{_refReferenceSetId = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
refQuotaUser :: Lens' ReferencesetsGet' (Maybe Text)
refQuotaUser
  = lens _refQuotaUser (\ s a -> s{_refQuotaUser = a})

-- | Returns response with indentations and line breaks.
refPrettyPrint :: Lens' ReferencesetsGet' Bool
refPrettyPrint
  = lens _refPrettyPrint
      (\ s a -> s{_refPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
refUserIp :: Lens' ReferencesetsGet' (Maybe Text)
refUserIp
  = lens _refUserIp (\ s a -> s{_refUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
refKey :: Lens' ReferencesetsGet' (Maybe Text)
refKey = lens _refKey (\ s a -> s{_refKey = a})

-- | OAuth 2.0 token for the current user.
refOauthToken :: Lens' ReferencesetsGet' (Maybe Text)
refOauthToken
  = lens _refOauthToken
      (\ s a -> s{_refOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
refFields :: Lens' ReferencesetsGet' (Maybe Text)
refFields
  = lens _refFields (\ s a -> s{_refFields = a})

-- | Data format for the response.
refAlt :: Lens' ReferencesetsGet' Text
refAlt = lens _refAlt (\ s a -> s{_refAlt = a})

instance GoogleRequest ReferencesetsGet' where
        type Rs ReferencesetsGet' = ReferenceSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReferencesetsGet{..}
          = go _refReferenceSetId _refQuotaUser _refPrettyPrint
              _refUserIp
              _refKey
              _refOauthToken
              _refFields
              _refAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReferencesetsGetAPI)
                      r
                      u
