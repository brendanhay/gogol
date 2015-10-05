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
-- Module      : Network.Google.Resource.Genomics.AnnotationSets.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an annotation set. The update must respect all mutability
-- restrictions and other invariants described on the annotation set
-- resource. Caller must have WRITE permission for the associated dataset.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsAnnotationSetsUpdate@.
module Network.Google.Resource.Genomics.AnnotationSets.Update
    (
    -- * REST Resource
      AnnotationSetsUpdateResource

    -- * Creating a Request
    , annotationSetsUpdate'
    , AnnotationSetsUpdate'

    -- * Request Lenses
    , asuQuotaUser
    , asuPrettyPrint
    , asuAnnotationSetId
    , asuUserIP
    , asuPayload
    , asuKey
    , asuOAuthToken
    , asuFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsAnnotationSetsUpdate@ which the
-- 'AnnotationSetsUpdate'' request conforms to.
type AnnotationSetsUpdateResource =
     "annotationSets" :>
       Capture "annotationSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AnnotationSet :>
                         Put '[JSON] AnnotationSet

-- | Updates an annotation set. The update must respect all mutability
-- restrictions and other invariants described on the annotation set
-- resource. Caller must have WRITE permission for the associated dataset.
--
-- /See:/ 'annotationSetsUpdate'' smart constructor.
data AnnotationSetsUpdate' = AnnotationSetsUpdate'
    { _asuQuotaUser       :: !(Maybe Text)
    , _asuPrettyPrint     :: !Bool
    , _asuAnnotationSetId :: !Text
    , _asuUserIP          :: !(Maybe Text)
    , _asuPayload         :: !AnnotationSet
    , _asuKey             :: !(Maybe Key)
    , _asuOAuthToken      :: !(Maybe OAuthToken)
    , _asuFields          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationSetsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asuQuotaUser'
--
-- * 'asuPrettyPrint'
--
-- * 'asuAnnotationSetId'
--
-- * 'asuUserIP'
--
-- * 'asuPayload'
--
-- * 'asuKey'
--
-- * 'asuOAuthToken'
--
-- * 'asuFields'
annotationSetsUpdate'
    :: Text -- ^ 'annotationSetId'
    -> AnnotationSet -- ^ 'payload'
    -> AnnotationSetsUpdate'
annotationSetsUpdate' pAsuAnnotationSetId_ pAsuPayload_ =
    AnnotationSetsUpdate'
    { _asuQuotaUser = Nothing
    , _asuPrettyPrint = True
    , _asuAnnotationSetId = pAsuAnnotationSetId_
    , _asuUserIP = Nothing
    , _asuPayload = pAsuPayload_
    , _asuKey = Nothing
    , _asuOAuthToken = Nothing
    , _asuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
asuQuotaUser :: Lens' AnnotationSetsUpdate' (Maybe Text)
asuQuotaUser
  = lens _asuQuotaUser (\ s a -> s{_asuQuotaUser = a})

-- | Returns response with indentations and line breaks.
asuPrettyPrint :: Lens' AnnotationSetsUpdate' Bool
asuPrettyPrint
  = lens _asuPrettyPrint
      (\ s a -> s{_asuPrettyPrint = a})

-- | The ID of the annotation set to be updated.
asuAnnotationSetId :: Lens' AnnotationSetsUpdate' Text
asuAnnotationSetId
  = lens _asuAnnotationSetId
      (\ s a -> s{_asuAnnotationSetId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
asuUserIP :: Lens' AnnotationSetsUpdate' (Maybe Text)
asuUserIP
  = lens _asuUserIP (\ s a -> s{_asuUserIP = a})

-- | Multipart request metadata.
asuPayload :: Lens' AnnotationSetsUpdate' AnnotationSet
asuPayload
  = lens _asuPayload (\ s a -> s{_asuPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
asuKey :: Lens' AnnotationSetsUpdate' (Maybe Key)
asuKey = lens _asuKey (\ s a -> s{_asuKey = a})

-- | OAuth 2.0 token for the current user.
asuOAuthToken :: Lens' AnnotationSetsUpdate' (Maybe OAuthToken)
asuOAuthToken
  = lens _asuOAuthToken
      (\ s a -> s{_asuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
asuFields :: Lens' AnnotationSetsUpdate' (Maybe Text)
asuFields
  = lens _asuFields (\ s a -> s{_asuFields = a})

instance GoogleAuth AnnotationSetsUpdate' where
        authKey = asuKey . _Just
        authToken = asuOAuthToken . _Just

instance GoogleRequest AnnotationSetsUpdate' where
        type Rs AnnotationSetsUpdate' = AnnotationSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationSetsUpdate'{..}
          = go _asuAnnotationSetId _asuQuotaUser
              (Just _asuPrettyPrint)
              _asuUserIP
              _asuFields
              _asuKey
              _asuOAuthToken
              (Just AltJSON)
              _asuPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AnnotationSetsUpdateResource)
                      r
                      u
