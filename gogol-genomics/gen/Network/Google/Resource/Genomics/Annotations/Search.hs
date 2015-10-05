{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Annotations.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Searches for annotations that match the given criteria. Results are
-- returned ordered by start position. Annotations that have matching start
-- positions are ordered deterministically. Caller must have READ
-- permission for the queried annotation sets.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsAnnotationsSearch@.
module Network.Google.Resource.Genomics.Annotations.Search
    (
    -- * REST Resource
      AnnotationsSearchResource

    -- * Creating a Request
    , annotationsSearch'
    , AnnotationsSearch'

    -- * Request Lenses
    , asQuotaUser
    , asPrettyPrint
    , asUserIP
    , asPayload
    , asKey
    , asOAuthToken
    , asFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsAnnotationsSearch@ which the
-- 'AnnotationsSearch'' request conforms to.
type AnnotationsSearchResource =
     "annotations" :>
       "search" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SearchAnnotationsRequest :>
                         Post '[JSON] SearchAnnotationsResponse

-- | Searches for annotations that match the given criteria. Results are
-- returned ordered by start position. Annotations that have matching start
-- positions are ordered deterministically. Caller must have READ
-- permission for the queried annotation sets.
--
-- /See:/ 'annotationsSearch'' smart constructor.
data AnnotationsSearch' = AnnotationsSearch'
    { _asQuotaUser   :: !(Maybe Text)
    , _asPrettyPrint :: !Bool
    , _asUserIP      :: !(Maybe Text)
    , _asPayload     :: !SearchAnnotationsRequest
    , _asKey         :: !(Maybe Key)
    , _asOAuthToken  :: !(Maybe OAuthToken)
    , _asFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asQuotaUser'
--
-- * 'asPrettyPrint'
--
-- * 'asUserIP'
--
-- * 'asPayload'
--
-- * 'asKey'
--
-- * 'asOAuthToken'
--
-- * 'asFields'
annotationsSearch'
    :: SearchAnnotationsRequest -- ^ 'payload'
    -> AnnotationsSearch'
annotationsSearch' pAsPayload_ =
    AnnotationsSearch'
    { _asQuotaUser = Nothing
    , _asPrettyPrint = True
    , _asUserIP = Nothing
    , _asPayload = pAsPayload_
    , _asKey = Nothing
    , _asOAuthToken = Nothing
    , _asFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
asQuotaUser :: Lens' AnnotationsSearch' (Maybe Text)
asQuotaUser
  = lens _asQuotaUser (\ s a -> s{_asQuotaUser = a})

-- | Returns response with indentations and line breaks.
asPrettyPrint :: Lens' AnnotationsSearch' Bool
asPrettyPrint
  = lens _asPrettyPrint
      (\ s a -> s{_asPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
asUserIP :: Lens' AnnotationsSearch' (Maybe Text)
asUserIP = lens _asUserIP (\ s a -> s{_asUserIP = a})

-- | Multipart request metadata.
asPayload :: Lens' AnnotationsSearch' SearchAnnotationsRequest
asPayload
  = lens _asPayload (\ s a -> s{_asPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
asKey :: Lens' AnnotationsSearch' (Maybe Key)
asKey = lens _asKey (\ s a -> s{_asKey = a})

-- | OAuth 2.0 token for the current user.
asOAuthToken :: Lens' AnnotationsSearch' (Maybe OAuthToken)
asOAuthToken
  = lens _asOAuthToken (\ s a -> s{_asOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
asFields :: Lens' AnnotationsSearch' (Maybe Text)
asFields = lens _asFields (\ s a -> s{_asFields = a})

instance GoogleAuth AnnotationsSearch' where
        authKey = asKey . _Just
        authToken = asOAuthToken . _Just

instance GoogleRequest AnnotationsSearch' where
        type Rs AnnotationsSearch' =
             SearchAnnotationsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationsSearch'{..}
          = go _asQuotaUser (Just _asPrettyPrint) _asUserIP
              _asFields
              _asKey
              _asOAuthToken
              (Just AltJSON)
              _asPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AnnotationsSearchResource)
                      r
                      u
