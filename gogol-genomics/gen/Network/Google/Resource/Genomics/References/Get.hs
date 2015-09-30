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
module Network.Google.Resource.Genomics.References.Get
    (
    -- * REST Resource
      ReferencesGetResource

    -- * Creating a Request
    , referencesGet'
    , ReferencesGet'

    -- * Request Lenses
    , rggQuotaUser
    , rggPrettyPrint
    , rggUserIp
    , rggReferenceId
    , rggKey
    , rggOauthToken
    , rggFields
    , rggAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsReferencesGet@ which the
-- 'ReferencesGet'' request conforms to.
type ReferencesGetResource =
     "references" :>
       Capture "referenceId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] Reference

-- | Gets a reference. Implements GlobalAllianceApi.getReference.
--
-- /See:/ 'referencesGet'' smart constructor.
data ReferencesGet' = ReferencesGet'
    { _rggQuotaUser   :: !(Maybe Text)
    , _rggPrettyPrint :: !Bool
    , _rggUserIp      :: !(Maybe Text)
    , _rggReferenceId :: !Text
    , _rggKey         :: !(Maybe Text)
    , _rggOauthToken  :: !(Maybe Text)
    , _rggFields      :: !(Maybe Text)
    , _rggAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferencesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rggQuotaUser'
--
-- * 'rggPrettyPrint'
--
-- * 'rggUserIp'
--
-- * 'rggReferenceId'
--
-- * 'rggKey'
--
-- * 'rggOauthToken'
--
-- * 'rggFields'
--
-- * 'rggAlt'
referencesGet'
    :: Text -- ^ 'referenceId'
    -> ReferencesGet'
referencesGet' pRggReferenceId_ =
    ReferencesGet'
    { _rggQuotaUser = Nothing
    , _rggPrettyPrint = True
    , _rggUserIp = Nothing
    , _rggReferenceId = pRggReferenceId_
    , _rggKey = Nothing
    , _rggOauthToken = Nothing
    , _rggFields = Nothing
    , _rggAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rggQuotaUser :: Lens' ReferencesGet' (Maybe Text)
rggQuotaUser
  = lens _rggQuotaUser (\ s a -> s{_rggQuotaUser = a})

-- | Returns response with indentations and line breaks.
rggPrettyPrint :: Lens' ReferencesGet' Bool
rggPrettyPrint
  = lens _rggPrettyPrint
      (\ s a -> s{_rggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rggUserIp :: Lens' ReferencesGet' (Maybe Text)
rggUserIp
  = lens _rggUserIp (\ s a -> s{_rggUserIp = a})

-- | The ID of the reference.
rggReferenceId :: Lens' ReferencesGet' Text
rggReferenceId
  = lens _rggReferenceId
      (\ s a -> s{_rggReferenceId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rggKey :: Lens' ReferencesGet' (Maybe Text)
rggKey = lens _rggKey (\ s a -> s{_rggKey = a})

-- | OAuth 2.0 token for the current user.
rggOauthToken :: Lens' ReferencesGet' (Maybe Text)
rggOauthToken
  = lens _rggOauthToken
      (\ s a -> s{_rggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rggFields :: Lens' ReferencesGet' (Maybe Text)
rggFields
  = lens _rggFields (\ s a -> s{_rggFields = a})

-- | Data format for the response.
rggAlt :: Lens' ReferencesGet' Alt
rggAlt = lens _rggAlt (\ s a -> s{_rggAlt = a})

instance GoogleRequest ReferencesGet' where
        type Rs ReferencesGet' = Reference
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReferencesGet'{..}
          = go _rggQuotaUser (Just _rggPrettyPrint) _rggUserIp
              _rggReferenceId
              _rggKey
              _rggOauthToken
              _rggFields
              (Just _rggAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReferencesGetResource)
                      r
                      u
