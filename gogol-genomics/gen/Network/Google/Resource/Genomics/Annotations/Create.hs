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
-- Module      : Network.Google.Resource.Genomics.Annotations.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new annotation. Caller must have WRITE permission for the
-- associated annotation set.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsAnnotationsCreate@.
module Network.Google.Resource.Genomics.Annotations.Create
    (
    -- * REST Resource
      AnnotationsCreateResource

    -- * Creating a Request
    , annotationsCreate'
    , AnnotationsCreate'

    -- * Request Lenses
    , acQuotaUser
    , acPrettyPrint
    , acUserIP
    , acPayload
    , acKey
    , acOAuthToken
    , acFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsAnnotationsCreate@ which the
-- 'AnnotationsCreate'' request conforms to.
type AnnotationsCreateResource =
     "annotations" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[OctetStream] Annotation :>
                       Post '[JSON] Annotation

-- | Creates a new annotation. Caller must have WRITE permission for the
-- associated annotation set.
--
-- /See:/ 'annotationsCreate'' smart constructor.
data AnnotationsCreate' = AnnotationsCreate'
    { _acQuotaUser   :: !(Maybe Text)
    , _acPrettyPrint :: !Bool
    , _acUserIP      :: !(Maybe Text)
    , _acPayload     :: !Annotation
    , _acKey         :: !(Maybe Key)
    , _acOAuthToken  :: !(Maybe OAuthToken)
    , _acFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acQuotaUser'
--
-- * 'acPrettyPrint'
--
-- * 'acUserIP'
--
-- * 'acPayload'
--
-- * 'acKey'
--
-- * 'acOAuthToken'
--
-- * 'acFields'
annotationsCreate'
    :: Annotation -- ^ 'payload'
    -> AnnotationsCreate'
annotationsCreate' pAcPayload_ =
    AnnotationsCreate'
    { _acQuotaUser = Nothing
    , _acPrettyPrint = True
    , _acUserIP = Nothing
    , _acPayload = pAcPayload_
    , _acKey = Nothing
    , _acOAuthToken = Nothing
    , _acFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acQuotaUser :: Lens' AnnotationsCreate' (Maybe Text)
acQuotaUser
  = lens _acQuotaUser (\ s a -> s{_acQuotaUser = a})

-- | Returns response with indentations and line breaks.
acPrettyPrint :: Lens' AnnotationsCreate' Bool
acPrettyPrint
  = lens _acPrettyPrint
      (\ s a -> s{_acPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acUserIP :: Lens' AnnotationsCreate' (Maybe Text)
acUserIP = lens _acUserIP (\ s a -> s{_acUserIP = a})

-- | Multipart request metadata.
acPayload :: Lens' AnnotationsCreate' Annotation
acPayload
  = lens _acPayload (\ s a -> s{_acPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acKey :: Lens' AnnotationsCreate' (Maybe Key)
acKey = lens _acKey (\ s a -> s{_acKey = a})

-- | OAuth 2.0 token for the current user.
acOAuthToken :: Lens' AnnotationsCreate' (Maybe OAuthToken)
acOAuthToken
  = lens _acOAuthToken (\ s a -> s{_acOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acFields :: Lens' AnnotationsCreate' (Maybe Text)
acFields = lens _acFields (\ s a -> s{_acFields = a})

instance GoogleAuth AnnotationsCreate' where
        authKey = acKey . _Just
        authToken = acOAuthToken . _Just

instance GoogleRequest AnnotationsCreate' where
        type Rs AnnotationsCreate' = Annotation
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationsCreate'{..}
          = go _acQuotaUser (Just _acPrettyPrint) _acUserIP
              _acFields
              _acKey
              _acOAuthToken
              (Just AltJSON)
              _acPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AnnotationsCreateResource)
                      r
                      u
