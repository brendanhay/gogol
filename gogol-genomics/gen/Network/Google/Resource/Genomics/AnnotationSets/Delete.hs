{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.AnnotationSets.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an annotation set. Caller must have WRITE permission for the
-- associated annotation set.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsAnnotationSetsDelete@.
module Network.Google.Resource.Genomics.AnnotationSets.Delete
    (
    -- * REST Resource
      AnnotationSetsDeleteResource

    -- * Creating a Request
    , annotationSetsDelete'
    , AnnotationSetsDelete'

    -- * Request Lenses
    , asdQuotaUser
    , asdPrettyPrint
    , asdAnnotationSetId
    , asdUserIp
    , asdKey
    , asdOauthToken
    , asdFields
    , asdAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsAnnotationSetsDelete@ which the
-- 'AnnotationSetsDelete'' request conforms to.
type AnnotationSetsDeleteResource =
     "annotationSets" :>
       Capture "annotationSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes an annotation set. Caller must have WRITE permission for the
-- associated annotation set.
--
-- /See:/ 'annotationSetsDelete'' smart constructor.
data AnnotationSetsDelete' = AnnotationSetsDelete'
    { _asdQuotaUser       :: !(Maybe Text)
    , _asdPrettyPrint     :: !Bool
    , _asdAnnotationSetId :: !Text
    , _asdUserIp          :: !(Maybe Text)
    , _asdKey             :: !(Maybe Text)
    , _asdOauthToken      :: !(Maybe Text)
    , _asdFields          :: !(Maybe Text)
    , _asdAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationSetsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asdQuotaUser'
--
-- * 'asdPrettyPrint'
--
-- * 'asdAnnotationSetId'
--
-- * 'asdUserIp'
--
-- * 'asdKey'
--
-- * 'asdOauthToken'
--
-- * 'asdFields'
--
-- * 'asdAlt'
annotationSetsDelete'
    :: Text -- ^ 'annotationSetId'
    -> AnnotationSetsDelete'
annotationSetsDelete' pAsdAnnotationSetId_ =
    AnnotationSetsDelete'
    { _asdQuotaUser = Nothing
    , _asdPrettyPrint = True
    , _asdAnnotationSetId = pAsdAnnotationSetId_
    , _asdUserIp = Nothing
    , _asdKey = Nothing
    , _asdOauthToken = Nothing
    , _asdFields = Nothing
    , _asdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
asdQuotaUser :: Lens' AnnotationSetsDelete' (Maybe Text)
asdQuotaUser
  = lens _asdQuotaUser (\ s a -> s{_asdQuotaUser = a})

-- | Returns response with indentations and line breaks.
asdPrettyPrint :: Lens' AnnotationSetsDelete' Bool
asdPrettyPrint
  = lens _asdPrettyPrint
      (\ s a -> s{_asdPrettyPrint = a})

-- | The ID of the annotation set to be deleted.
asdAnnotationSetId :: Lens' AnnotationSetsDelete' Text
asdAnnotationSetId
  = lens _asdAnnotationSetId
      (\ s a -> s{_asdAnnotationSetId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
asdUserIp :: Lens' AnnotationSetsDelete' (Maybe Text)
asdUserIp
  = lens _asdUserIp (\ s a -> s{_asdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
asdKey :: Lens' AnnotationSetsDelete' (Maybe Text)
asdKey = lens _asdKey (\ s a -> s{_asdKey = a})

-- | OAuth 2.0 token for the current user.
asdOauthToken :: Lens' AnnotationSetsDelete' (Maybe Text)
asdOauthToken
  = lens _asdOauthToken
      (\ s a -> s{_asdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
asdFields :: Lens' AnnotationSetsDelete' (Maybe Text)
asdFields
  = lens _asdFields (\ s a -> s{_asdFields = a})

-- | Data format for the response.
asdAlt :: Lens' AnnotationSetsDelete' Alt
asdAlt = lens _asdAlt (\ s a -> s{_asdAlt = a})

instance GoogleRequest AnnotationSetsDelete' where
        type Rs AnnotationSetsDelete' = ()
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationSetsDelete'{..}
          = go _asdQuotaUser (Just _asdPrettyPrint)
              _asdAnnotationSetId
              _asdUserIp
              _asdKey
              _asdOauthToken
              _asdFields
              (Just _asdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AnnotationSetsDeleteResource)
                      r
                      u
