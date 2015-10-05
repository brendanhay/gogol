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
    , rUserIP
    , rKey
    , rOAuthToken
    , rFields
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
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] ReferenceSet

-- | Gets a reference set. Implements GlobalAllianceApi.getReferenceSet.
--
-- /See:/ 'referencesetsGet'' smart constructor.
data ReferencesetsGet' = ReferencesetsGet'
    { _rReferenceSetId :: !Text
    , _rQuotaUser      :: !(Maybe Text)
    , _rPrettyPrint    :: !Bool
    , _rUserIP         :: !(Maybe Text)
    , _rKey            :: !(Maybe Key)
    , _rOAuthToken     :: !(Maybe OAuthToken)
    , _rFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'rUserIP'
--
-- * 'rKey'
--
-- * 'rOAuthToken'
--
-- * 'rFields'
referencesetsGet'
    :: Text -- ^ 'referenceSetId'
    -> ReferencesetsGet'
referencesetsGet' pRReferenceSetId_ =
    ReferencesetsGet'
    { _rReferenceSetId = pRReferenceSetId_
    , _rQuotaUser = Nothing
    , _rPrettyPrint = True
    , _rUserIP = Nothing
    , _rKey = Nothing
    , _rOAuthToken = Nothing
    , _rFields = Nothing
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
rUserIP :: Lens' ReferencesetsGet' (Maybe Text)
rUserIP = lens _rUserIP (\ s a -> s{_rUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rKey :: Lens' ReferencesetsGet' (Maybe Key)
rKey = lens _rKey (\ s a -> s{_rKey = a})

-- | OAuth 2.0 token for the current user.
rOAuthToken :: Lens' ReferencesetsGet' (Maybe OAuthToken)
rOAuthToken
  = lens _rOAuthToken (\ s a -> s{_rOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rFields :: Lens' ReferencesetsGet' (Maybe Text)
rFields = lens _rFields (\ s a -> s{_rFields = a})

instance GoogleAuth ReferencesetsGet' where
        authKey = rKey . _Just
        authToken = rOAuthToken . _Just

instance GoogleRequest ReferencesetsGet' where
        type Rs ReferencesetsGet' = ReferenceSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReferencesetsGet'{..}
          = go _rReferenceSetId _rQuotaUser
              (Just _rPrettyPrint)
              _rUserIP
              _rFields
              _rKey
              _rOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReferencesetsGetResource)
                      r
                      u
