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
-- Module      : Network.Google.Resource.Genomics.Annotations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets an annotation. Caller must have READ permission for the associated
-- annotation set.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsAnnotationsGet@.
module Network.Google.Resource.Genomics.Annotations.Get
    (
    -- * REST Resource
      AnnotationsGetResource

    -- * Creating a Request
    , annotationsGet'
    , AnnotationsGet'

    -- * Request Lenses
    , agQuotaUser
    , agPrettyPrint
    , agUserIP
    , agKey
    , agAnnotationId
    , agOAuthToken
    , agFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsAnnotationsGet@ which the
-- 'AnnotationsGet'' request conforms to.
type AnnotationsGetResource =
     "annotations" :>
       Capture "annotationId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Annotation

-- | Gets an annotation. Caller must have READ permission for the associated
-- annotation set.
--
-- /See:/ 'annotationsGet'' smart constructor.
data AnnotationsGet' = AnnotationsGet'
    { _agQuotaUser    :: !(Maybe Text)
    , _agPrettyPrint  :: !Bool
    , _agUserIP       :: !(Maybe Text)
    , _agKey          :: !(Maybe Key)
    , _agAnnotationId :: !Text
    , _agOAuthToken   :: !(Maybe OAuthToken)
    , _agFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agQuotaUser'
--
-- * 'agPrettyPrint'
--
-- * 'agUserIP'
--
-- * 'agKey'
--
-- * 'agAnnotationId'
--
-- * 'agOAuthToken'
--
-- * 'agFields'
annotationsGet'
    :: Text -- ^ 'annotationId'
    -> AnnotationsGet'
annotationsGet' pAgAnnotationId_ =
    AnnotationsGet'
    { _agQuotaUser = Nothing
    , _agPrettyPrint = True
    , _agUserIP = Nothing
    , _agKey = Nothing
    , _agAnnotationId = pAgAnnotationId_
    , _agOAuthToken = Nothing
    , _agFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agQuotaUser :: Lens' AnnotationsGet' (Maybe Text)
agQuotaUser
  = lens _agQuotaUser (\ s a -> s{_agQuotaUser = a})

-- | Returns response with indentations and line breaks.
agPrettyPrint :: Lens' AnnotationsGet' Bool
agPrettyPrint
  = lens _agPrettyPrint
      (\ s a -> s{_agPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agUserIP :: Lens' AnnotationsGet' (Maybe Text)
agUserIP = lens _agUserIP (\ s a -> s{_agUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agKey :: Lens' AnnotationsGet' (Maybe Key)
agKey = lens _agKey (\ s a -> s{_agKey = a})

-- | The ID of the annotation set to be retrieved.
agAnnotationId :: Lens' AnnotationsGet' Text
agAnnotationId
  = lens _agAnnotationId
      (\ s a -> s{_agAnnotationId = a})

-- | OAuth 2.0 token for the current user.
agOAuthToken :: Lens' AnnotationsGet' (Maybe OAuthToken)
agOAuthToken
  = lens _agOAuthToken (\ s a -> s{_agOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
agFields :: Lens' AnnotationsGet' (Maybe Text)
agFields = lens _agFields (\ s a -> s{_agFields = a})

instance GoogleAuth AnnotationsGet' where
        authKey = agKey . _Just
        authToken = agOAuthToken . _Just

instance GoogleRequest AnnotationsGet' where
        type Rs AnnotationsGet' = Annotation
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationsGet'{..}
          = go _agAnnotationId _agQuotaUser
              (Just _agPrettyPrint)
              _agUserIP
              _agFields
              _agKey
              _agOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AnnotationsGetResource)
                      r
                      u
