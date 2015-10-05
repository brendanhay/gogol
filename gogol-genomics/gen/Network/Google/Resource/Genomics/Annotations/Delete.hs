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
-- Module      : Network.Google.Resource.Genomics.Annotations.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an annotation. Caller must have WRITE permission for the
-- associated annotation set.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsAnnotationsDelete@.
module Network.Google.Resource.Genomics.Annotations.Delete
    (
    -- * REST Resource
      AnnotationsDeleteResource

    -- * Creating a Request
    , annotationsDelete'
    , AnnotationsDelete'

    -- * Request Lenses
    , adQuotaUser
    , adPrettyPrint
    , adUserIP
    , adKey
    , adAnnotationId
    , adOAuthToken
    , adFields
    ) where

import Network.Google.Genomics.Types
import Network.Google.Prelude

-- | A resource alias for @GenomicsAnnotationsDelete@ which the
-- 'AnnotationsDelete'' request conforms to.
type AnnotationsDeleteResource =
     "annotations" :>
       Capture "annotationId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an annotation. Caller must have WRITE permission for the
-- associated annotation set.
--
-- /See:/ 'annotationsDelete'' smart constructor.
data AnnotationsDelete' = AnnotationsDelete'
    { _adQuotaUser :: !(Maybe Text)
    , _adPrettyPrint :: !Bool
    , _adUserIP :: !(Maybe Text)
    , _adKey :: !(Maybe Key)
    , _adAnnotationId :: !Text
    , _adOAuthToken :: !(Maybe OAuthToken)
    , _adFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adQuotaUser'
--
-- * 'adPrettyPrint'
--
-- * 'adUserIP'
--
-- * 'adKey'
--
-- * 'adAnnotationId'
--
-- * 'adOAuthToken'
--
-- * 'adFields'
annotationsDelete'
    :: Text -- ^ 'annotationId'
    -> AnnotationsDelete'
annotationsDelete' pAdAnnotationId_ = 
    AnnotationsDelete'
    { _adQuotaUser = Nothing
    , _adPrettyPrint = True
    , _adUserIP = Nothing
    , _adKey = Nothing
    , _adAnnotationId = pAdAnnotationId_
    , _adOAuthToken = Nothing
    , _adFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
adQuotaUser :: Lens' AnnotationsDelete' (Maybe Text)
adQuotaUser
  = lens _adQuotaUser (\ s a -> s{_adQuotaUser = a})

-- | Returns response with indentations and line breaks.
adPrettyPrint :: Lens' AnnotationsDelete' Bool
adPrettyPrint
  = lens _adPrettyPrint
      (\ s a -> s{_adPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
adUserIP :: Lens' AnnotationsDelete' (Maybe Text)
adUserIP = lens _adUserIP (\ s a -> s{_adUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
adKey :: Lens' AnnotationsDelete' (Maybe Key)
adKey = lens _adKey (\ s a -> s{_adKey = a})

-- | The ID of the annotation set to be deleted.
adAnnotationId :: Lens' AnnotationsDelete' Text
adAnnotationId
  = lens _adAnnotationId
      (\ s a -> s{_adAnnotationId = a})

-- | OAuth 2.0 token for the current user.
adOAuthToken :: Lens' AnnotationsDelete' (Maybe OAuthToken)
adOAuthToken
  = lens _adOAuthToken (\ s a -> s{_adOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
adFields :: Lens' AnnotationsDelete' (Maybe Text)
adFields = lens _adFields (\ s a -> s{_adFields = a})

instance GoogleAuth AnnotationsDelete' where
        authKey = adKey . _Just
        authToken = adOAuthToken . _Just

instance GoogleRequest AnnotationsDelete' where
        type Rs AnnotationsDelete' = ()
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationsDelete'{..}
          = go _adAnnotationId _adQuotaUser
              (Just _adPrettyPrint)
              _adUserIP
              _adFields
              _adKey
              _adOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AnnotationsDeleteResource)
                      r
                      u
