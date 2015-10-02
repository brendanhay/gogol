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
    , asgUserIP
    , asgKey
    , asgOAuthToken
    , asgFields
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
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] AnnotationSet

-- | Gets an annotation set. Caller must have READ permission for the
-- associated dataset.
--
-- /See:/ 'annotationSetsGet'' smart constructor.
data AnnotationSetsGet' = AnnotationSetsGet'
    { _asgQuotaUser       :: !(Maybe Text)
    , _asgPrettyPrint     :: !Bool
    , _asgAnnotationSetId :: !Text
    , _asgUserIP          :: !(Maybe Text)
    , _asgKey             :: !(Maybe Key)
    , _asgOAuthToken      :: !(Maybe OAuthToken)
    , _asgFields          :: !(Maybe Text)
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
-- * 'asgUserIP'
--
-- * 'asgKey'
--
-- * 'asgOAuthToken'
--
-- * 'asgFields'
annotationSetsGet'
    :: Text -- ^ 'annotationSetId'
    -> AnnotationSetsGet'
annotationSetsGet' pAsgAnnotationSetId_ =
    AnnotationSetsGet'
    { _asgQuotaUser = Nothing
    , _asgPrettyPrint = True
    , _asgAnnotationSetId = pAsgAnnotationSetId_
    , _asgUserIP = Nothing
    , _asgKey = Nothing
    , _asgOAuthToken = Nothing
    , _asgFields = Nothing
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
asgUserIP :: Lens' AnnotationSetsGet' (Maybe Text)
asgUserIP
  = lens _asgUserIP (\ s a -> s{_asgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
asgKey :: Lens' AnnotationSetsGet' (Maybe Key)
asgKey = lens _asgKey (\ s a -> s{_asgKey = a})

-- | OAuth 2.0 token for the current user.
asgOAuthToken :: Lens' AnnotationSetsGet' (Maybe OAuthToken)
asgOAuthToken
  = lens _asgOAuthToken
      (\ s a -> s{_asgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
asgFields :: Lens' AnnotationSetsGet' (Maybe Text)
asgFields
  = lens _asgFields (\ s a -> s{_asgFields = a})

instance GoogleAuth AnnotationSetsGet' where
        authKey = asgKey . _Just
        authToken = asgOAuthToken . _Just

instance GoogleRequest AnnotationSetsGet' where
        type Rs AnnotationSetsGet' = AnnotationSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationSetsGet'{..}
          = go _asgAnnotationSetId _asgQuotaUser
              (Just _asgPrettyPrint)
              _asgUserIP
              _asgFields
              _asgKey
              _asgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AnnotationSetsGetResource)
                      r
                      u
