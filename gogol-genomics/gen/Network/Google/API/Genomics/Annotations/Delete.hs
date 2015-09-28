{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Genomics.Annotations.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an annotation. Caller must have WRITE permission for the
-- associated annotation set.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @genomics.annotations.delete@.
module Network.Google.API.Genomics.Annotations.Delete
    (
    -- * REST Resource
      AnnotationsDeleteAPI

    -- * Creating a Request
    , annotationsDelete'
    , AnnotationsDelete'

    -- * Request Lenses
    , adQuotaUser
    , adPrettyPrint
    , adUserIp
    , adKey
    , adAnnotationId
    , adOauthToken
    , adFields
    , adAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for genomics.annotations.delete which the
-- 'AnnotationsDelete'' request conforms to.
type AnnotationsDeleteAPI =
     "annotations" :>
       Capture "annotationId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes an annotation. Caller must have WRITE permission for the
-- associated annotation set.
--
-- /See:/ 'annotationsDelete'' smart constructor.
data AnnotationsDelete' = AnnotationsDelete'
    { _adQuotaUser    :: !(Maybe Text)
    , _adPrettyPrint  :: !Bool
    , _adUserIp       :: !(Maybe Text)
    , _adKey          :: !(Maybe Text)
    , _adAnnotationId :: !Text
    , _adOauthToken   :: !(Maybe Text)
    , _adFields       :: !(Maybe Text)
    , _adAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adQuotaUser'
--
-- * 'adPrettyPrint'
--
-- * 'adUserIp'
--
-- * 'adKey'
--
-- * 'adAnnotationId'
--
-- * 'adOauthToken'
--
-- * 'adFields'
--
-- * 'adAlt'
annotationsDelete'
    :: Text -- ^ 'annotationId'
    -> AnnotationsDelete'
annotationsDelete' pAdAnnotationId_ =
    AnnotationsDelete'
    { _adQuotaUser = Nothing
    , _adPrettyPrint = True
    , _adUserIp = Nothing
    , _adKey = Nothing
    , _adAnnotationId = pAdAnnotationId_
    , _adOauthToken = Nothing
    , _adFields = Nothing
    , _adAlt = JSON
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
adUserIp :: Lens' AnnotationsDelete' (Maybe Text)
adUserIp = lens _adUserIp (\ s a -> s{_adUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
adKey :: Lens' AnnotationsDelete' (Maybe Text)
adKey = lens _adKey (\ s a -> s{_adKey = a})

-- | The ID of the annotation set to be deleted.
adAnnotationId :: Lens' AnnotationsDelete' Text
adAnnotationId
  = lens _adAnnotationId
      (\ s a -> s{_adAnnotationId = a})

-- | OAuth 2.0 token for the current user.
adOauthToken :: Lens' AnnotationsDelete' (Maybe Text)
adOauthToken
  = lens _adOauthToken (\ s a -> s{_adOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
adFields :: Lens' AnnotationsDelete' (Maybe Text)
adFields = lens _adFields (\ s a -> s{_adFields = a})

-- | Data format for the response.
adAlt :: Lens' AnnotationsDelete' Alt
adAlt = lens _adAlt (\ s a -> s{_adAlt = a})

instance GoogleRequest AnnotationsDelete' where
        type Rs AnnotationsDelete' = ()
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationsDelete'{..}
          = go _adQuotaUser (Just _adPrettyPrint) _adUserIp
              _adKey
              _adAnnotationId
              _adOauthToken
              _adFields
              (Just _adAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AnnotationsDeleteAPI)
                      r
                      u
