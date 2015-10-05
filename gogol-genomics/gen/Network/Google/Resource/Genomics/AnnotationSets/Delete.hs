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
    , asdUserIP
    , asdKey
    , asdOAuthToken
    , asdFields
    ) where

import Network.Google.Genomics.Types
import Network.Google.Prelude

-- | A resource alias for @GenomicsAnnotationSetsDelete@ which the
-- 'AnnotationSetsDelete'' request conforms to.
type AnnotationSetsDeleteResource =
     "annotationSets" :>
       Capture "annotationSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an annotation set. Caller must have WRITE permission for the
-- associated annotation set.
--
-- /See:/ 'annotationSetsDelete'' smart constructor.
data AnnotationSetsDelete' = AnnotationSetsDelete'
    { _asdQuotaUser :: !(Maybe Text)
    , _asdPrettyPrint :: !Bool
    , _asdAnnotationSetId :: !Text
    , _asdUserIP :: !(Maybe Text)
    , _asdKey :: !(Maybe Key)
    , _asdOAuthToken :: !(Maybe OAuthToken)
    , _asdFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'asdUserIP'
--
-- * 'asdKey'
--
-- * 'asdOAuthToken'
--
-- * 'asdFields'
annotationSetsDelete'
    :: Text -- ^ 'annotationSetId'
    -> AnnotationSetsDelete'
annotationSetsDelete' pAsdAnnotationSetId_ = 
    AnnotationSetsDelete'
    { _asdQuotaUser = Nothing
    , _asdPrettyPrint = True
    , _asdAnnotationSetId = pAsdAnnotationSetId_
    , _asdUserIP = Nothing
    , _asdKey = Nothing
    , _asdOAuthToken = Nothing
    , _asdFields = Nothing
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
asdUserIP :: Lens' AnnotationSetsDelete' (Maybe Text)
asdUserIP
  = lens _asdUserIP (\ s a -> s{_asdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
asdKey :: Lens' AnnotationSetsDelete' (Maybe Key)
asdKey = lens _asdKey (\ s a -> s{_asdKey = a})

-- | OAuth 2.0 token for the current user.
asdOAuthToken :: Lens' AnnotationSetsDelete' (Maybe OAuthToken)
asdOAuthToken
  = lens _asdOAuthToken
      (\ s a -> s{_asdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
asdFields :: Lens' AnnotationSetsDelete' (Maybe Text)
asdFields
  = lens _asdFields (\ s a -> s{_asdFields = a})

instance GoogleAuth AnnotationSetsDelete' where
        authKey = asdKey . _Just
        authToken = asdOAuthToken . _Just

instance GoogleRequest AnnotationSetsDelete' where
        type Rs AnnotationSetsDelete' = ()
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationSetsDelete'{..}
          = go _asdAnnotationSetId _asdQuotaUser
              (Just _asdPrettyPrint)
              _asdUserIP
              _asdFields
              _asdKey
              _asdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AnnotationSetsDeleteResource)
                      r
                      u
