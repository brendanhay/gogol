{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Genomics.AnnotationSets.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new annotation set. Caller must have WRITE permission for the
-- associated dataset.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @genomics.annotationSets.create@.
module Network.Google.API.Genomics.AnnotationSets.Create
    (
    -- * REST Resource
      AnnotationSetsCreateAPI

    -- * Creating a Request
    , annotationSetsCreate'
    , AnnotationSetsCreate'

    -- * Request Lenses
    , ascQuotaUser
    , ascPrettyPrint
    , ascUserIp
    , ascKey
    , ascOauthToken
    , ascFields
    , ascAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for genomics.annotationSets.create which the
-- 'AnnotationSetsCreate'' request conforms to.
type AnnotationSetsCreateAPI =
     "annotationSets" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :> Post '[JSON] AnnotationSet

-- | Creates a new annotation set. Caller must have WRITE permission for the
-- associated dataset.
--
-- /See:/ 'annotationSetsCreate'' smart constructor.
data AnnotationSetsCreate' = AnnotationSetsCreate'
    { _ascQuotaUser   :: !(Maybe Text)
    , _ascPrettyPrint :: !Bool
    , _ascUserIp      :: !(Maybe Text)
    , _ascKey         :: !(Maybe Text)
    , _ascOauthToken  :: !(Maybe Text)
    , _ascFields      :: !(Maybe Text)
    , _ascAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnnotationSetsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ascQuotaUser'
--
-- * 'ascPrettyPrint'
--
-- * 'ascUserIp'
--
-- * 'ascKey'
--
-- * 'ascOauthToken'
--
-- * 'ascFields'
--
-- * 'ascAlt'
annotationSetsCreate'
    :: AnnotationSetsCreate'
annotationSetsCreate' =
    AnnotationSetsCreate'
    { _ascQuotaUser = Nothing
    , _ascPrettyPrint = True
    , _ascUserIp = Nothing
    , _ascKey = Nothing
    , _ascOauthToken = Nothing
    , _ascFields = Nothing
    , _ascAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ascQuotaUser :: Lens' AnnotationSetsCreate' (Maybe Text)
ascQuotaUser
  = lens _ascQuotaUser (\ s a -> s{_ascQuotaUser = a})

-- | Returns response with indentations and line breaks.
ascPrettyPrint :: Lens' AnnotationSetsCreate' Bool
ascPrettyPrint
  = lens _ascPrettyPrint
      (\ s a -> s{_ascPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ascUserIp :: Lens' AnnotationSetsCreate' (Maybe Text)
ascUserIp
  = lens _ascUserIp (\ s a -> s{_ascUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ascKey :: Lens' AnnotationSetsCreate' (Maybe Text)
ascKey = lens _ascKey (\ s a -> s{_ascKey = a})

-- | OAuth 2.0 token for the current user.
ascOauthToken :: Lens' AnnotationSetsCreate' (Maybe Text)
ascOauthToken
  = lens _ascOauthToken
      (\ s a -> s{_ascOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ascFields :: Lens' AnnotationSetsCreate' (Maybe Text)
ascFields
  = lens _ascFields (\ s a -> s{_ascFields = a})

-- | Data format for the response.
ascAlt :: Lens' AnnotationSetsCreate' Alt
ascAlt = lens _ascAlt (\ s a -> s{_ascAlt = a})

instance GoogleRequest AnnotationSetsCreate' where
        type Rs AnnotationSetsCreate' = AnnotationSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u AnnotationSetsCreate'{..}
          = go _ascQuotaUser (Just _ascPrettyPrint) _ascUserIp
              _ascKey
              _ascOauthToken
              _ascFields
              (Just _ascAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AnnotationSetsCreateAPI)
                      r
                      u
