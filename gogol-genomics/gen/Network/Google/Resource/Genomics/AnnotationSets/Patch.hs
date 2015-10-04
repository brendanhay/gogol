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
-- Module      : Network.Google.Resource.Genomics.AnnotationSets.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an annotation set. The update must respect all mutability
-- restrictions and other invariants described on the annotation set
-- resource. Caller must have WRITE permission for the associated dataset.
-- This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsAnnotationSetsPatch@.
module Network.Google.Resource.Genomics.AnnotationSets.Patch
    (
    -- * REST Resource
      AnnotationSetsPatchResource

    -- * Creating a Request
    , annotationSetsPatch'
    , AnnotationSetsPatch'

    -- * Request Lenses
    , aspQuotaUser
    , aspPrettyPrint
    , aspAnnotationSetId
    , aspUserIP
    , aspPayload
    , aspKey
    , aspOAuthToken
    , aspFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsAnnotationSetsPatch@ which the
-- 'AnnotationSetsPatch'' request conforms to.
type AnnotationSetsPatchResource =
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
                         Patch '[JSON] AnnotationSet

-- | Updates an annotation set. The update must respect all mutability
-- restrictions and other invariants described on the annotation set
-- resource. Caller must have WRITE permission for the associated dataset.
-- This method supports patch semantics.
--
-- /See:/ 'annotationSetsPatch'' smart constructor.
data AnnotationSetsPatch' = AnnotationSetsPatch'
    { _aspQuotaUser       :: !(Maybe Text)
    , _aspPrettyPrint     :: !Bool
    , _aspAnnotationSetId :: !Text
    , _aspUserIP          :: !(Maybe Text)
    , _aspPayload         :: !AnnotationSet
    , _aspKey             :: !(Maybe Key)
    , _aspOAuthToken      :: !(Maybe OAuthToken)
    , _aspFields          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationSetsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aspQuotaUser'
--
-- * 'aspPrettyPrint'
--
-- * 'aspAnnotationSetId'
--
-- * 'aspUserIP'
--
-- * 'aspPayload'
--
-- * 'aspKey'
--
-- * 'aspOAuthToken'
--
-- * 'aspFields'
annotationSetsPatch'
    :: Text -- ^ 'annotationSetId'
    -> AnnotationSet -- ^ 'payload'
    -> AnnotationSetsPatch'
annotationSetsPatch' pAspAnnotationSetId_ pAspPayload_ =
    AnnotationSetsPatch'
    { _aspQuotaUser = Nothing
    , _aspPrettyPrint = True
    , _aspAnnotationSetId = pAspAnnotationSetId_
    , _aspUserIP = Nothing
    , _aspPayload = pAspPayload_
    , _aspKey = Nothing
    , _aspOAuthToken = Nothing
    , _aspFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aspQuotaUser :: Lens' AnnotationSetsPatch' (Maybe Text)
aspQuotaUser
  = lens _aspQuotaUser (\ s a -> s{_aspQuotaUser = a})

-- | Returns response with indentations and line breaks.
aspPrettyPrint :: Lens' AnnotationSetsPatch' Bool
aspPrettyPrint
  = lens _aspPrettyPrint
      (\ s a -> s{_aspPrettyPrint = a})

-- | The ID of the annotation set to be updated.
aspAnnotationSetId :: Lens' AnnotationSetsPatch' Text
aspAnnotationSetId
  = lens _aspAnnotationSetId
      (\ s a -> s{_aspAnnotationSetId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aspUserIP :: Lens' AnnotationSetsPatch' (Maybe Text)
aspUserIP
  = lens _aspUserIP (\ s a -> s{_aspUserIP = a})

-- | Multipart request metadata.
aspPayload :: Lens' AnnotationSetsPatch' AnnotationSet
aspPayload
  = lens _aspPayload (\ s a -> s{_aspPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aspKey :: Lens' AnnotationSetsPatch' (Maybe Key)
aspKey = lens _aspKey (\ s a -> s{_aspKey = a})

-- | OAuth 2.0 token for the current user.
aspOAuthToken :: Lens' AnnotationSetsPatch' (Maybe OAuthToken)
aspOAuthToken
  = lens _aspOAuthToken
      (\ s a -> s{_aspOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aspFields :: Lens' AnnotationSetsPatch' (Maybe Text)
aspFields
  = lens _aspFields (\ s a -> s{_aspFields = a})

instance GoogleAuth AnnotationSetsPatch' where
        authKey = aspKey . _Just
        authToken = aspOAuthToken . _Just

instance GoogleRequest AnnotationSetsPatch' where
        type Rs AnnotationSetsPatch' = AnnotationSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationSetsPatch'{..}
          = go _aspAnnotationSetId _aspQuotaUser
              (Just _aspPrettyPrint)
              _aspUserIP
              _aspFields
              _aspKey
              _aspOAuthToken
              (Just AltJSON)
              _aspPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AnnotationSetsPatchResource)
                      r
                      u
