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
-- Module      : Network.Google.Resource.Genomics.Annotations.BatchCreate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates one or more new annotations atomically. All annotations must
-- belong to the same annotation set. Caller must have WRITE permission for
-- this annotation set. For optimal performance, batch positionally
-- adjacent annotations together. If the request has a systemic issue, such
-- as an attempt to write to an inaccessible annotation set, the entire RPC
-- will fail accordingly. For lesser data issues, when possible an error
-- will be isolated to the corresponding batch entry in the response; the
-- remaining well formed annotations will be created normally.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsAnnotationsBatchCreate@.
module Network.Google.Resource.Genomics.Annotations.BatchCreate
    (
    -- * REST Resource
      AnnotationsBatchCreateResource

    -- * Creating a Request
    , annotationsBatchCreate'
    , AnnotationsBatchCreate'

    -- * Request Lenses
    , abcQuotaUser
    , abcPrettyPrint
    , abcUserIP
    , abcPayload
    , abcKey
    , abcOAuthToken
    , abcFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsAnnotationsBatchCreate@ which the
-- 'AnnotationsBatchCreate'' request conforms to.
type AnnotationsBatchCreateResource =
     "annotations:batchCreate" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" AuthKey :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] BatchCreateAnnotationsRequest :>
                       Post '[JSON] BatchAnnotationsResponse

-- | Creates one or more new annotations atomically. All annotations must
-- belong to the same annotation set. Caller must have WRITE permission for
-- this annotation set. For optimal performance, batch positionally
-- adjacent annotations together. If the request has a systemic issue, such
-- as an attempt to write to an inaccessible annotation set, the entire RPC
-- will fail accordingly. For lesser data issues, when possible an error
-- will be isolated to the corresponding batch entry in the response; the
-- remaining well formed annotations will be created normally.
--
-- /See:/ 'annotationsBatchCreate'' smart constructor.
data AnnotationsBatchCreate' = AnnotationsBatchCreate'
    { _abcQuotaUser   :: !(Maybe Text)
    , _abcPrettyPrint :: !Bool
    , _abcUserIP      :: !(Maybe Text)
    , _abcPayload     :: !BatchCreateAnnotationsRequest
    , _abcKey         :: !(Maybe AuthKey)
    , _abcOAuthToken  :: !(Maybe OAuthToken)
    , _abcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationsBatchCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'abcQuotaUser'
--
-- * 'abcPrettyPrint'
--
-- * 'abcUserIP'
--
-- * 'abcPayload'
--
-- * 'abcKey'
--
-- * 'abcOAuthToken'
--
-- * 'abcFields'
annotationsBatchCreate'
    :: BatchCreateAnnotationsRequest -- ^ 'payload'
    -> AnnotationsBatchCreate'
annotationsBatchCreate' pAbcPayload_ =
    AnnotationsBatchCreate'
    { _abcQuotaUser = Nothing
    , _abcPrettyPrint = True
    , _abcUserIP = Nothing
    , _abcPayload = pAbcPayload_
    , _abcKey = Nothing
    , _abcOAuthToken = Nothing
    , _abcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
abcQuotaUser :: Lens' AnnotationsBatchCreate' (Maybe Text)
abcQuotaUser
  = lens _abcQuotaUser (\ s a -> s{_abcQuotaUser = a})

-- | Returns response with indentations and line breaks.
abcPrettyPrint :: Lens' AnnotationsBatchCreate' Bool
abcPrettyPrint
  = lens _abcPrettyPrint
      (\ s a -> s{_abcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
abcUserIP :: Lens' AnnotationsBatchCreate' (Maybe Text)
abcUserIP
  = lens _abcUserIP (\ s a -> s{_abcUserIP = a})

-- | Multipart request metadata.
abcPayload :: Lens' AnnotationsBatchCreate' BatchCreateAnnotationsRequest
abcPayload
  = lens _abcPayload (\ s a -> s{_abcPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
abcKey :: Lens' AnnotationsBatchCreate' (Maybe AuthKey)
abcKey = lens _abcKey (\ s a -> s{_abcKey = a})

-- | OAuth 2.0 token for the current user.
abcOAuthToken :: Lens' AnnotationsBatchCreate' (Maybe OAuthToken)
abcOAuthToken
  = lens _abcOAuthToken
      (\ s a -> s{_abcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
abcFields :: Lens' AnnotationsBatchCreate' (Maybe Text)
abcFields
  = lens _abcFields (\ s a -> s{_abcFields = a})

instance GoogleAuth AnnotationsBatchCreate' where
        authKey = abcKey . _Just
        authToken = abcOAuthToken . _Just

instance GoogleRequest AnnotationsBatchCreate' where
        type Rs AnnotationsBatchCreate' =
             BatchAnnotationsResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationsBatchCreate'{..}
          = go _abcQuotaUser (Just _abcPrettyPrint) _abcUserIP
              _abcFields
              _abcKey
              _abcOAuthToken
              (Just AltJSON)
              _abcPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AnnotationsBatchCreateResource)
                      r
                      u
