{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Genomics.AnnotationSets.Patch
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
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @genomics.annotationSets.patch@.
module Network.Google.API.Genomics.AnnotationSets.Patch
    (
    -- * REST Resource
      AnnotationSetsPatchAPI

    -- * Creating a Request
    , annotationSetsPatch'
    , AnnotationSetsPatch'

    -- * Request Lenses
    , aspQuotaUser
    , aspPrettyPrint
    , aspAnnotationSetId
    , aspUserIp
    , aspKey
    , aspOauthToken
    , aspFields
    , aspAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for genomics.annotationSets.patch which the
-- 'AnnotationSetsPatch'' request conforms to.
type AnnotationSetsPatchAPI =
     "annotationSets" :>
       Capture "annotationSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Patch '[JSON] AnnotationSet

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
    , _aspUserIp          :: !(Maybe Text)
    , _aspKey             :: !(Maybe Text)
    , _aspOauthToken      :: !(Maybe Text)
    , _aspFields          :: !(Maybe Text)
    , _aspAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'aspUserIp'
--
-- * 'aspKey'
--
-- * 'aspOauthToken'
--
-- * 'aspFields'
--
-- * 'aspAlt'
annotationSetsPatch'
    :: Text -- ^ 'annotationSetId'
    -> AnnotationSetsPatch'
annotationSetsPatch' pAspAnnotationSetId_ =
    AnnotationSetsPatch'
    { _aspQuotaUser = Nothing
    , _aspPrettyPrint = True
    , _aspAnnotationSetId = pAspAnnotationSetId_
    , _aspUserIp = Nothing
    , _aspKey = Nothing
    , _aspOauthToken = Nothing
    , _aspFields = Nothing
    , _aspAlt = JSON
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
aspUserIp :: Lens' AnnotationSetsPatch' (Maybe Text)
aspUserIp
  = lens _aspUserIp (\ s a -> s{_aspUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aspKey :: Lens' AnnotationSetsPatch' (Maybe Text)
aspKey = lens _aspKey (\ s a -> s{_aspKey = a})

-- | OAuth 2.0 token for the current user.
aspOauthToken :: Lens' AnnotationSetsPatch' (Maybe Text)
aspOauthToken
  = lens _aspOauthToken
      (\ s a -> s{_aspOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aspFields :: Lens' AnnotationSetsPatch' (Maybe Text)
aspFields
  = lens _aspFields (\ s a -> s{_aspFields = a})

-- | Data format for the response.
aspAlt :: Lens' AnnotationSetsPatch' Alt
aspAlt = lens _aspAlt (\ s a -> s{_aspAlt = a})

instance GoogleRequest AnnotationSetsPatch' where
        type Rs AnnotationSetsPatch' = AnnotationSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationSetsPatch'{..}
          = go _aspQuotaUser (Just _aspPrettyPrint)
              _aspAnnotationSetId
              _aspUserIp
              _aspKey
              _aspOauthToken
              _aspFields
              (Just _aspAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AnnotationSetsPatchAPI)
                      r
                      u
