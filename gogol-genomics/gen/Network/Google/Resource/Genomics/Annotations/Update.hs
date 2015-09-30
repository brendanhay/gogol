{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Genomics.Annotations.Update
    (
    -- * REST Resource
      AnnotationsUpdateAPI

    -- * Creating a Request
    , annotationsUpdate
    , AnnotationsUpdate

    -- * Request Lenses
    , auQuotaUser
    , auPrettyPrint
    , auUserIp
    , auKey
    , auAnnotationId
    , auOauthToken
    , auFields
    , auAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsAnnotationsUpdate@ which the
-- 'AnnotationsUpdate' request conforms to.
type AnnotationsUpdateAPI =
     "annotations" :>
       Capture "annotationId" Text :> Put '[JSON] Annotation

-- | Updates an annotation. The update must respect all mutability
-- restrictions and other invariants described on the annotation resource.
-- Caller must have WRITE permission for the associated dataset.
--
-- /See:/ 'annotationsUpdate' smart constructor.
data AnnotationsUpdate = AnnotationsUpdate
    { _auQuotaUser    :: !(Maybe Text)
    , _auPrettyPrint  :: !Bool
    , _auUserIp       :: !(Maybe Text)
    , _auKey          :: !(Maybe Text)
    , _auAnnotationId :: !Text
    , _auOauthToken   :: !(Maybe Text)
    , _auFields       :: !(Maybe Text)
    , _auAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auQuotaUser'
--
-- * 'auPrettyPrint'
--
-- * 'auUserIp'
--
-- * 'auKey'
--
-- * 'auAnnotationId'
--
-- * 'auOauthToken'
--
-- * 'auFields'
--
-- * 'auAlt'
annotationsUpdate
    :: Text -- ^ 'annotationId'
    -> AnnotationsUpdate
annotationsUpdate pAuAnnotationId_ =
    AnnotationsUpdate
    { _auQuotaUser = Nothing
    , _auPrettyPrint = True
    , _auUserIp = Nothing
    , _auKey = Nothing
    , _auAnnotationId = pAuAnnotationId_
    , _auOauthToken = Nothing
    , _auFields = Nothing
    , _auAlt = "json"
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
auUserIp :: Lens' AnnotationsUpdate' (Maybe Text)
auUserIp = lens _auUserIp (\ s a -> s{_auUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
auKey :: Lens' AnnotationsUpdate' (Maybe Text)
auKey = lens _auKey (\ s a -> s{_auKey = a})

-- | The ID of the annotation set to be updated.
auAnnotationId :: Lens' AnnotationsUpdate' Text
auAnnotationId
  = lens _auAnnotationId
      (\ s a -> s{_auAnnotationId = a})

-- | OAuth 2.0 token for the current user.
auOauthToken :: Lens' AnnotationsUpdate' (Maybe Text)
auOauthToken
  = lens _auOauthToken (\ s a -> s{_auOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
auFields :: Lens' AnnotationsUpdate' (Maybe Text)
auFields = lens _auFields (\ s a -> s{_auFields = a})

-- | Data format for the response.
auAlt :: Lens' AnnotationsUpdate' Text
auAlt = lens _auAlt (\ s a -> s{_auAlt = a})

instance GoogleRequest AnnotationsUpdate' where
        type Rs AnnotationsUpdate' = Annotation
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationsUpdate{..}
          = go _auQuotaUser _auPrettyPrint _auUserIp _auKey
              _auAnnotationId
              _auOauthToken
              _auFields
              _auAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AnnotationsUpdateAPI)
                      r
                      u
