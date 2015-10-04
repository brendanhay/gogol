{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Annotations.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an annotation. The update must respect all mutability
-- restrictions and other invariants described on the annotation resource.
-- Caller must have WRITE permission for the associated dataset. This
-- method supports patch semantics.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsAnnotationsPatch@.
module Network.Google.Resource.Genomics.Annotations.Patch
    (
    -- * REST Resource
      AnnotationsPatchResource

    -- * Creating a Request
    , annotationsPatch'
    , AnnotationsPatch'

    -- * Request Lenses
    , apQuotaUser
    , apPrettyPrint
    , apUserIP
    , apPayload
    , apKey
    , apAnnotationId
    , apOAuthToken
    , apFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsAnnotationsPatch@ which the
-- 'AnnotationsPatch'' request conforms to.
type AnnotationsPatchResource =
     "annotations" :>
       Capture "annotationId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[OctetStream] Annotation :>
                         Patch '[JSON] Annotation

-- | Updates an annotation. The update must respect all mutability
-- restrictions and other invariants described on the annotation resource.
-- Caller must have WRITE permission for the associated dataset. This
-- method supports patch semantics.
--
-- /See:/ 'annotationsPatch'' smart constructor.
data AnnotationsPatch' = AnnotationsPatch'
    { _apQuotaUser    :: !(Maybe Text)
    , _apPrettyPrint  :: !Bool
    , _apUserIP       :: !(Maybe Text)
    , _apPayload      :: !Annotation
    , _apKey          :: !(Maybe Key)
    , _apAnnotationId :: !Text
    , _apOAuthToken   :: !(Maybe OAuthToken)
    , _apFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apQuotaUser'
--
-- * 'apPrettyPrint'
--
-- * 'apUserIP'
--
-- * 'apPayload'
--
-- * 'apKey'
--
-- * 'apAnnotationId'
--
-- * 'apOAuthToken'
--
-- * 'apFields'
annotationsPatch'
    :: Annotation -- ^ 'payload'
    -> Text -- ^ 'annotationId'
    -> AnnotationsPatch'
annotationsPatch' pApPayload_ pApAnnotationId_ =
    AnnotationsPatch'
    { _apQuotaUser = Nothing
    , _apPrettyPrint = True
    , _apUserIP = Nothing
    , _apPayload = pApPayload_
    , _apKey = Nothing
    , _apAnnotationId = pApAnnotationId_
    , _apOAuthToken = Nothing
    , _apFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
apQuotaUser :: Lens' AnnotationsPatch' (Maybe Text)
apQuotaUser
  = lens _apQuotaUser (\ s a -> s{_apQuotaUser = a})

-- | Returns response with indentations and line breaks.
apPrettyPrint :: Lens' AnnotationsPatch' Bool
apPrettyPrint
  = lens _apPrettyPrint
      (\ s a -> s{_apPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
apUserIP :: Lens' AnnotationsPatch' (Maybe Text)
apUserIP = lens _apUserIP (\ s a -> s{_apUserIP = a})

-- | Multipart request metadata.
apPayload :: Lens' AnnotationsPatch' Annotation
apPayload
  = lens _apPayload (\ s a -> s{_apPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apKey :: Lens' AnnotationsPatch' (Maybe Key)
apKey = lens _apKey (\ s a -> s{_apKey = a})

-- | The ID of the annotation set to be updated.
apAnnotationId :: Lens' AnnotationsPatch' Text
apAnnotationId
  = lens _apAnnotationId
      (\ s a -> s{_apAnnotationId = a})

-- | OAuth 2.0 token for the current user.
apOAuthToken :: Lens' AnnotationsPatch' (Maybe OAuthToken)
apOAuthToken
  = lens _apOAuthToken (\ s a -> s{_apOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
apFields :: Lens' AnnotationsPatch' (Maybe Text)
apFields = lens _apFields (\ s a -> s{_apFields = a})

instance GoogleAuth AnnotationsPatch' where
        authKey = apKey . _Just
        authToken = apOAuthToken . _Just

instance GoogleRequest AnnotationsPatch' where
        type Rs AnnotationsPatch' = Annotation
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationsPatch'{..}
          = go _apAnnotationId _apQuotaUser
              (Just _apPrettyPrint)
              _apUserIP
              _apFields
              _apKey
              _apOAuthToken
              (Just AltJSON)
              _apPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AnnotationsPatchResource)
                      r
                      u
