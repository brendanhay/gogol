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
-- Module      : Network.Google.Resource.Genomics.Annotations.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an annotation. The update must respect all mutability
-- restrictions and other invariants described on the annotation resource.
-- Caller must have WRITE permission for the associated dataset.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsAnnotationsUpdate@.
module Network.Google.Resource.Genomics.Annotations.Update
    (
    -- * REST Resource
      AnnotationsUpdateResource

    -- * Creating a Request
    , annotationsUpdate'
    , AnnotationsUpdate'

    -- * Request Lenses
    , auQuotaUser
    , auPrettyPrint
    , auUserIP
    , auPayload
    , auKey
    , auAnnotationId
    , auOAuthToken
    , auFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsAnnotationsUpdate@ which the
-- 'AnnotationsUpdate'' request conforms to.
type AnnotationsUpdateResource =
     "annotations" :>
       Capture "annotationId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Annotation :> Put '[JSON] Annotation

-- | Updates an annotation. The update must respect all mutability
-- restrictions and other invariants described on the annotation resource.
-- Caller must have WRITE permission for the associated dataset.
--
-- /See:/ 'annotationsUpdate'' smart constructor.
data AnnotationsUpdate' = AnnotationsUpdate'
    { _auQuotaUser    :: !(Maybe Text)
    , _auPrettyPrint  :: !Bool
    , _auUserIP       :: !(Maybe Text)
    , _auPayload      :: !Annotation
    , _auKey          :: !(Maybe AuthKey)
    , _auAnnotationId :: !Text
    , _auOAuthToken   :: !(Maybe OAuthToken)
    , _auFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auQuotaUser'
--
-- * 'auPrettyPrint'
--
-- * 'auUserIP'
--
-- * 'auPayload'
--
-- * 'auKey'
--
-- * 'auAnnotationId'
--
-- * 'auOAuthToken'
--
-- * 'auFields'
annotationsUpdate'
    :: Annotation -- ^ 'payload'
    -> Text -- ^ 'annotationId'
    -> AnnotationsUpdate'
annotationsUpdate' pAuPayload_ pAuAnnotationId_ =
    AnnotationsUpdate'
    { _auQuotaUser = Nothing
    , _auPrettyPrint = True
    , _auUserIP = Nothing
    , _auPayload = pAuPayload_
    , _auKey = Nothing
    , _auAnnotationId = pAuAnnotationId_
    , _auOAuthToken = Nothing
    , _auFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
auQuotaUser :: Lens' AnnotationsUpdate' (Maybe Text)
auQuotaUser
  = lens _auQuotaUser (\ s a -> s{_auQuotaUser = a})

-- | Returns response with indentations and line breaks.
auPrettyPrint :: Lens' AnnotationsUpdate' Bool
auPrettyPrint
  = lens _auPrettyPrint
      (\ s a -> s{_auPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
auUserIP :: Lens' AnnotationsUpdate' (Maybe Text)
auUserIP = lens _auUserIP (\ s a -> s{_auUserIP = a})

-- | Multipart request metadata.
auPayload :: Lens' AnnotationsUpdate' Annotation
auPayload
  = lens _auPayload (\ s a -> s{_auPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
auKey :: Lens' AnnotationsUpdate' (Maybe AuthKey)
auKey = lens _auKey (\ s a -> s{_auKey = a})

-- | The ID of the annotation set to be updated.
auAnnotationId :: Lens' AnnotationsUpdate' Text
auAnnotationId
  = lens _auAnnotationId
      (\ s a -> s{_auAnnotationId = a})

-- | OAuth 2.0 token for the current user.
auOAuthToken :: Lens' AnnotationsUpdate' (Maybe OAuthToken)
auOAuthToken
  = lens _auOAuthToken (\ s a -> s{_auOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
auFields :: Lens' AnnotationsUpdate' (Maybe Text)
auFields = lens _auFields (\ s a -> s{_auFields = a})

instance GoogleAuth AnnotationsUpdate' where
        authKey = auKey . _Just
        authToken = auOAuthToken . _Just

instance GoogleRequest AnnotationsUpdate' where
        type Rs AnnotationsUpdate' = Annotation
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationsUpdate'{..}
          = go _auAnnotationId _auQuotaUser
              (Just _auPrettyPrint)
              _auUserIP
              _auFields
              _auKey
              _auOAuthToken
              (Just AltJSON)
              _auPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AnnotationsUpdateResource)
                      r
                      u
