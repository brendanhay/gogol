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
-- Module      : Network.Google.Resource.Genomics.AnnotationSets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets an annotation set. Caller must have READ permission for the
-- associated dataset.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsAnnotationSetsGet@.
module Network.Google.Resource.Genomics.AnnotationSets.Get
    (
    -- * REST Resource
      AnnotationSetsGetResource

    -- * Creating a Request
    , annotationSetsGet'
    , AnnotationSetsGet'

    -- * Request Lenses
    , asgQuotaUser
    , asgPrettyPrint
    , asgAnnotationSetId
    , asgUserIp
    , asgKey
    , asgOauthToken
    , asgFields
    , asgAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsAnnotationSetsGet@ which the
-- 'AnnotationSetsGet'' request conforms to.
type AnnotationSetsGetResource =
     "annotationSets" :>
       Capture "annotationSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] AnnotationSet

-- | Gets an annotation set. Caller must have READ permission for the
-- associated dataset.
--
-- /See:/ 'annotationSetsGet'' smart constructor.
data AnnotationSetsGet' = AnnotationSetsGet'
    { _asgQuotaUser       :: !(Maybe Text)
    , _asgPrettyPrint     :: !Bool
    , _asgAnnotationSetId :: !Text
    , _asgUserIp          :: !(Maybe Text)
    , _asgKey             :: !(Maybe Text)
    , _asgOauthToken      :: !(Maybe Text)
    , _asgFields          :: !(Maybe Text)
    , _asgAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationSetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asgQuotaUser'
--
-- * 'asgPrettyPrint'
--
-- * 'asgAnnotationSetId'
--
-- * 'asgUserIp'
--
-- * 'asgKey'
--
-- * 'asgOauthToken'
--
-- * 'asgFields'
--
-- * 'asgAlt'
annotationSetsGet'
    :: Text -- ^ 'annotationSetId'
    -> AnnotationSetsGet'
annotationSetsGet' pAsgAnnotationSetId_ =
    AnnotationSetsGet'
    { _asgQuotaUser = Nothing
    , _asgPrettyPrint = True
    , _asgAnnotationSetId = pAsgAnnotationSetId_
    , _asgUserIp = Nothing
    , _asgKey = Nothing
    , _asgOauthToken = Nothing
    , _asgFields = Nothing
    , _asgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
asgQuotaUser :: Lens' AnnotationSetsGet' (Maybe Text)
asgQuotaUser
  = lens _asgQuotaUser (\ s a -> s{_asgQuotaUser = a})

-- | Returns response with indentations and line breaks.
asgPrettyPrint :: Lens' AnnotationSetsGet' Bool
asgPrettyPrint
  = lens _asgPrettyPrint
      (\ s a -> s{_asgPrettyPrint = a})

-- | The ID of the annotation set to be retrieved.
asgAnnotationSetId :: Lens' AnnotationSetsGet' Text
asgAnnotationSetId
  = lens _asgAnnotationSetId
      (\ s a -> s{_asgAnnotationSetId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
asgUserIp :: Lens' AnnotationSetsGet' (Maybe Text)
asgUserIp
  = lens _asgUserIp (\ s a -> s{_asgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
asgKey :: Lens' AnnotationSetsGet' (Maybe Text)
asgKey = lens _asgKey (\ s a -> s{_asgKey = a})

-- | OAuth 2.0 token for the current user.
asgOauthToken :: Lens' AnnotationSetsGet' (Maybe Text)
asgOauthToken
  = lens _asgOauthToken
      (\ s a -> s{_asgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
asgFields :: Lens' AnnotationSetsGet' (Maybe Text)
asgFields
  = lens _asgFields (\ s a -> s{_asgFields = a})

-- | Data format for the response.
asgAlt :: Lens' AnnotationSetsGet' Alt
asgAlt = lens _asgAlt (\ s a -> s{_asgAlt = a})

instance GoogleRequest AnnotationSetsGet' where
        type Rs AnnotationSetsGet' = AnnotationSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationSetsGet'{..}
          = go _asgQuotaUser (Just _asgPrettyPrint)
              _asgAnnotationSetId
              _asgUserIp
              _asgKey
              _asgOauthToken
              _asgFields
              (Just _asgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AnnotationSetsGetResource)
                      r
                      u
