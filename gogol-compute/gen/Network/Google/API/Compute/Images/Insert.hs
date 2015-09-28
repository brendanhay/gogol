{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Images.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an image resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.images.insert@.
module Network.Google.API.Compute.Images.Insert
    (
    -- * REST Resource
      ImagesInsertAPI

    -- * Creating a Request
    , imagesInsert'
    , ImagesInsert'

    -- * Request Lenses
    , iiQuotaUser
    , iiPrettyPrint
    , iiProject
    , iiUserIp
    , iiKey
    , iiOauthToken
    , iiFields
    , iiAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.images.insert which the
-- 'ImagesInsert'' request conforms to.
type ImagesInsertAPI =
     Capture "project" Text :>
       "global" :>
         "images" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Creates an image resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'imagesInsert'' smart constructor.
data ImagesInsert' = ImagesInsert'
    { _iiQuotaUser   :: !(Maybe Text)
    , _iiPrettyPrint :: !Bool
    , _iiProject     :: !Text
    , _iiUserIp      :: !(Maybe Text)
    , _iiKey         :: !(Maybe Text)
    , _iiOauthToken  :: !(Maybe Text)
    , _iiFields      :: !(Maybe Text)
    , _iiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiQuotaUser'
--
-- * 'iiPrettyPrint'
--
-- * 'iiProject'
--
-- * 'iiUserIp'
--
-- * 'iiKey'
--
-- * 'iiOauthToken'
--
-- * 'iiFields'
--
-- * 'iiAlt'
imagesInsert'
    :: Text -- ^ 'project'
    -> ImagesInsert'
imagesInsert' pIiProject_ =
    ImagesInsert'
    { _iiQuotaUser = Nothing
    , _iiPrettyPrint = True
    , _iiProject = pIiProject_
    , _iiUserIp = Nothing
    , _iiKey = Nothing
    , _iiOauthToken = Nothing
    , _iiFields = Nothing
    , _iiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iiQuotaUser :: Lens' ImagesInsert' (Maybe Text)
iiQuotaUser
  = lens _iiQuotaUser (\ s a -> s{_iiQuotaUser = a})

-- | Returns response with indentations and line breaks.
iiPrettyPrint :: Lens' ImagesInsert' Bool
iiPrettyPrint
  = lens _iiPrettyPrint
      (\ s a -> s{_iiPrettyPrint = a})

-- | Project ID for this request.
iiProject :: Lens' ImagesInsert' Text
iiProject
  = lens _iiProject (\ s a -> s{_iiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iiUserIp :: Lens' ImagesInsert' (Maybe Text)
iiUserIp = lens _iiUserIp (\ s a -> s{_iiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iiKey :: Lens' ImagesInsert' (Maybe Text)
iiKey = lens _iiKey (\ s a -> s{_iiKey = a})

-- | OAuth 2.0 token for the current user.
iiOauthToken :: Lens' ImagesInsert' (Maybe Text)
iiOauthToken
  = lens _iiOauthToken (\ s a -> s{_iiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
iiFields :: Lens' ImagesInsert' (Maybe Text)
iiFields = lens _iiFields (\ s a -> s{_iiFields = a})

-- | Data format for the response.
iiAlt :: Lens' ImagesInsert' Alt
iiAlt = lens _iiAlt (\ s a -> s{_iiAlt = a})

instance GoogleRequest ImagesInsert' where
        type Rs ImagesInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ImagesInsert'{..}
          = go _iiQuotaUser (Just _iiPrettyPrint) _iiProject
              _iiUserIp
              _iiKey
              _iiOauthToken
              _iiFields
              (Just _iiAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ImagesInsertAPI) r
                      u
