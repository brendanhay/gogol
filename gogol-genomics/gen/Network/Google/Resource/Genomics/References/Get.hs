{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.References.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a reference. Implements GlobalAllianceApi.getReference.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsReferencesGet@.
module Genomics.References.Get
    (
    -- * REST Resource
      ReferencesGetAPI

    -- * Creating a Request
    , referencesGet
    , ReferencesGet

    -- * Request Lenses
    , rgQuotaUser
    , rgPrettyPrint
    , rgUserIp
    , rgReferenceId
    , rgKey
    , rgOauthToken
    , rgFields
    , rgAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReferencesGet@ which the
-- 'ReferencesGet' request conforms to.
type ReferencesGetAPI =
     "references" :>
       Capture "referenceId" Text :> Get '[JSON] Reference

-- | Gets a reference. Implements GlobalAllianceApi.getReference.
--
-- /See:/ 'referencesGet' smart constructor.
data ReferencesGet = ReferencesGet
    { _rgQuotaUser   :: !(Maybe Text)
    , _rgPrettyPrint :: !Bool
    , _rgUserIp      :: !(Maybe Text)
    , _rgReferenceId :: !Text
    , _rgKey         :: !(Maybe Text)
    , _rgOauthToken  :: !(Maybe Text)
    , _rgFields      :: !(Maybe Text)
    , _rgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferencesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgQuotaUser'
--
-- * 'rgPrettyPrint'
--
-- * 'rgUserIp'
--
-- * 'rgReferenceId'
--
-- * 'rgKey'
--
-- * 'rgOauthToken'
--
-- * 'rgFields'
--
-- * 'rgAlt'
referencesGet
    :: Text -- ^ 'referenceId'
    -> ReferencesGet
referencesGet pRgReferenceId_ =
    ReferencesGet
    { _rgQuotaUser = Nothing
    , _rgPrettyPrint = True
    , _rgUserIp = Nothing
    , _rgReferenceId = pRgReferenceId_
    , _rgKey = Nothing
    , _rgOauthToken = Nothing
    , _rgFields = Nothing
    , _rgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rgQuotaUser :: Lens' ReferencesGet' (Maybe Text)
rgQuotaUser
  = lens _rgQuotaUser (\ s a -> s{_rgQuotaUser = a})

-- | Returns response with indentations and line breaks.
rgPrettyPrint :: Lens' ReferencesGet' Bool
rgPrettyPrint
  = lens _rgPrettyPrint
      (\ s a -> s{_rgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rgUserIp :: Lens' ReferencesGet' (Maybe Text)
rgUserIp = lens _rgUserIp (\ s a -> s{_rgUserIp = a})

-- | The ID of the reference.
rgReferenceId :: Lens' ReferencesGet' Text
rgReferenceId
  = lens _rgReferenceId
      (\ s a -> s{_rgReferenceId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rgKey :: Lens' ReferencesGet' (Maybe Text)
rgKey = lens _rgKey (\ s a -> s{_rgKey = a})

-- | OAuth 2.0 token for the current user.
rgOauthToken :: Lens' ReferencesGet' (Maybe Text)
rgOauthToken
  = lens _rgOauthToken (\ s a -> s{_rgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rgFields :: Lens' ReferencesGet' (Maybe Text)
rgFields = lens _rgFields (\ s a -> s{_rgFields = a})

-- | Data format for the response.
rgAlt :: Lens' ReferencesGet' Text
rgAlt = lens _rgAlt (\ s a -> s{_rgAlt = a})

instance GoogleRequest ReferencesGet' where
        type Rs ReferencesGet' = Reference
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReferencesGet{..}
          = go _rgQuotaUser _rgPrettyPrint _rgUserIp
              _rgReferenceId
              _rgKey
              _rgOauthToken
              _rgFields
              _rgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ReferencesGetAPI) r
                      u
