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
    , rggUserIP
    , rggReferenceId
    , rggKey
    , rggOAuthToken
    , rggFields
    ) where

import Network.Google.Genomics.Types
import Network.Google.Prelude

-- | A resource alias for @GenomicsReferencesGet@ which the
-- 'ReferencesGet'' request conforms to.
type ReferencesGetResource =
     "references" :>
       Capture "referenceId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Reference

-- | Gets a reference. Implements GlobalAllianceApi.getReference.
--
-- /See:/ 'referencesGet'' smart constructor.
data ReferencesGet' = ReferencesGet'
    { _rggQuotaUser :: !(Maybe Text)
    , _rggPrettyPrint :: !Bool
    , _rggUserIP :: !(Maybe Text)
    , _rggReferenceId :: !Text
    , _rggKey :: !(Maybe Key)
    , _rggOAuthToken :: !(Maybe OAuthToken)
    , _rggFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferencesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rggQuotaUser'
--
-- * 'rggPrettyPrint'
--
-- * 'rggUserIP'
--
-- * 'rggReferenceId'
--
-- * 'rggKey'
--
-- * 'rggOAuthToken'
--
-- * 'rggFields'
referencesGet'
    :: Text -- ^ 'referenceId'
    -> ReferencesGet'
referencesGet' pRggReferenceId_ = 
    ReferencesGet'
    { _rggQuotaUser = Nothing
    , _rggPrettyPrint = True
    , _rggUserIP = Nothing
    , _rggReferenceId = pRggReferenceId_
    , _rggKey = Nothing
    , _rggOAuthToken = Nothing
    , _rggFields = Nothing
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
rggUserIP :: Lens' ReferencesGet' (Maybe Text)
rggUserIP
  = lens _rggUserIP (\ s a -> s{_rggUserIP = a})

-- | The ID of the reference.
rggReferenceId :: Lens' ReferencesGet' Text
rggReferenceId
  = lens _rggReferenceId
      (\ s a -> s{_rggReferenceId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rggKey :: Lens' ReferencesGet' (Maybe Key)
rggKey = lens _rggKey (\ s a -> s{_rggKey = a})

-- | OAuth 2.0 token for the current user.
rggOAuthToken :: Lens' ReferencesGet' (Maybe OAuthToken)
rggOAuthToken
  = lens _rggOAuthToken
      (\ s a -> s{_rggOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rggFields :: Lens' ReferencesGet' (Maybe Text)
rggFields
  = lens _rggFields (\ s a -> s{_rggFields = a})

instance GoogleAuth ReferencesGet' where
        authKey = rggKey . _Just
        authToken = rggOAuthToken . _Just

instance GoogleRequest ReferencesGet' where
        type Rs ReferencesGet' = Reference
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u ReferencesGet'{..}
          = go _rggReferenceId _rggQuotaUser
              (Just _rggPrettyPrint)
              _rggUserIP
              _rggFields
              _rggKey
              _rggOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReferencesGetResource)
                      r
                      u
