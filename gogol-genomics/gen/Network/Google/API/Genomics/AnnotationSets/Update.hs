{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Genomics.AnnotationSets.Update
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
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @genomics.annotationSets.update@.
module Network.Google.API.Genomics.AnnotationSets.Update
    (
    -- * REST Resource
      AnnotationSetsUpdateAPI

    -- * Creating a Request
    , annotationSetsUpdate'
    , AnnotationSetsUpdate'

    -- * Request Lenses
    , asuQuotaUser
    , asuPrettyPrint
    , asuAnnotationSetId
    , asuUserIp
    , asuKey
    , asuOauthToken
    , asuFields
    , asuAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for genomics.annotationSets.update which the
-- 'AnnotationSetsUpdate'' request conforms to.
type AnnotationSetsUpdateAPI =
     "annotationSets" :>
       Capture "annotationSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Put '[JSON] AnnotationSet

-- | Updates an annotation set. The update must respect all mutability
-- restrictions and other invariants described on the annotation set
-- resource. Caller must have WRITE permission for the associated dataset.
--
-- /See:/ 'annotationSetsUpdate'' smart constructor.
data AnnotationSetsUpdate' = AnnotationSetsUpdate'
    { _asuQuotaUser       :: !(Maybe Text)
    , _asuPrettyPrint     :: !Bool
    , _asuAnnotationSetId :: !Text
    , _asuUserIp          :: !(Maybe Text)
    , _asuKey             :: !(Maybe Text)
    , _asuOauthToken      :: !(Maybe Text)
    , _asuFields          :: !(Maybe Text)
    , _asuAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'asuUserIp'
--
-- * 'asuKey'
--
-- * 'asuOauthToken'
--
-- * 'asuFields'
--
-- * 'asuAlt'
annotationSetsUpdate'
    :: Text -- ^ 'annotationSetId'
    -> AnnotationSetsUpdate'
annotationSetsUpdate' pAsuAnnotationSetId_ =
    AnnotationSetsUpdate'
    { _asuQuotaUser = Nothing
    , _asuPrettyPrint = True
    , _asuAnnotationSetId = pAsuAnnotationSetId_
    , _asuUserIp = Nothing
    , _asuKey = Nothing
    , _asuOauthToken = Nothing
    , _asuFields = Nothing
    , _asuAlt = JSON
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
asuUserIp :: Lens' AnnotationSetsUpdate' (Maybe Text)
asuUserIp
  = lens _asuUserIp (\ s a -> s{_asuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
asuKey :: Lens' AnnotationSetsUpdate' (Maybe Text)
asuKey = lens _asuKey (\ s a -> s{_asuKey = a})

-- | OAuth 2.0 token for the current user.
asuOauthToken :: Lens' AnnotationSetsUpdate' (Maybe Text)
asuOauthToken
  = lens _asuOauthToken
      (\ s a -> s{_asuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
asuFields :: Lens' AnnotationSetsUpdate' (Maybe Text)
asuFields
  = lens _asuFields (\ s a -> s{_asuFields = a})

-- | Data format for the response.
asuAlt :: Lens' AnnotationSetsUpdate' Alt
asuAlt = lens _asuAlt (\ s a -> s{_asuAlt = a})

instance GoogleRequest AnnotationSetsUpdate' where
        type Rs AnnotationSetsUpdate' = AnnotationSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationSetsUpdate'{..}
          = go _asuQuotaUser (Just _asuPrettyPrint)
              _asuAnnotationSetId
              _asuUserIp
              _asuKey
              _asuOauthToken
              _asuFields
              (Just _asuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AnnotationSetsUpdateAPI)
                      r
                      u
