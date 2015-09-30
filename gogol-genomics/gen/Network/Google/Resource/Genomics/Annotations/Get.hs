{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Genomics.Annotations.Get
    (
    -- * REST Resource
      AnnotationsGetAPI

    -- * Creating a Request
    , annotationsGet
    , AnnotationsGet

    -- * Request Lenses
    , agQuotaUser
    , agPrettyPrint
    , agUserIp
    , agKey
    , agAnnotationId
    , agOauthToken
    , agFields
    , agAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsAnnotationsGet@ which the
-- 'AnnotationsGet' request conforms to.
type AnnotationsGetAPI =
     "annotations" :>
       Capture "annotationId" Text :> Get '[JSON] Annotation

-- | Gets an annotation. Caller must have READ permission for the associated
-- annotation set.
--
-- /See:/ 'annotationsGet' smart constructor.
data AnnotationsGet = AnnotationsGet
    { _agQuotaUser    :: !(Maybe Text)
    , _agPrettyPrint  :: !Bool
    , _agUserIp       :: !(Maybe Text)
    , _agKey          :: !(Maybe Text)
    , _agAnnotationId :: !Text
    , _agOauthToken   :: !(Maybe Text)
    , _agFields       :: !(Maybe Text)
    , _agAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agQuotaUser'
--
-- * 'agPrettyPrint'
--
-- * 'agUserIp'
--
-- * 'agKey'
--
-- * 'agAnnotationId'
--
-- * 'agOauthToken'
--
-- * 'agFields'
--
-- * 'agAlt'
annotationsGet
    :: Text -- ^ 'annotationId'
    -> AnnotationsGet
annotationsGet pAgAnnotationId_ =
    AnnotationsGet
    { _agQuotaUser = Nothing
    , _agPrettyPrint = True
    , _agUserIp = Nothing
    , _agKey = Nothing
    , _agAnnotationId = pAgAnnotationId_
    , _agOauthToken = Nothing
    , _agFields = Nothing
    , _agAlt = "json"
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
agUserIp :: Lens' AnnotationsGet' (Maybe Text)
agUserIp = lens _agUserIp (\ s a -> s{_agUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agKey :: Lens' AnnotationsGet' (Maybe Text)
agKey = lens _agKey (\ s a -> s{_agKey = a})

-- | The ID of the annotation set to be retrieved.
agAnnotationId :: Lens' AnnotationsGet' Text
agAnnotationId
  = lens _agAnnotationId
      (\ s a -> s{_agAnnotationId = a})

-- | OAuth 2.0 token for the current user.
agOauthToken :: Lens' AnnotationsGet' (Maybe Text)
agOauthToken
  = lens _agOauthToken (\ s a -> s{_agOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
agFields :: Lens' AnnotationsGet' (Maybe Text)
agFields = lens _agFields (\ s a -> s{_agFields = a})

-- | Data format for the response.
agAlt :: Lens' AnnotationsGet' Text
agAlt = lens _agAlt (\ s a -> s{_agAlt = a})

instance GoogleRequest AnnotationsGet' where
        type Rs AnnotationsGet' = Annotation
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationsGet{..}
          = go _agQuotaUser _agPrettyPrint _agUserIp _agKey
              _agAnnotationId
              _agOauthToken
              _agFields
              _agAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AnnotationsGetAPI)
                      r
                      u
