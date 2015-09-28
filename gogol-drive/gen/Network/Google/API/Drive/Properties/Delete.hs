{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Properties.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a property.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.properties.delete@.
module Network.Google.API.Drive.Properties.Delete
    (
    -- * REST Resource
      PropertiesDeleteAPI

    -- * Creating a Request
    , propertiesDelete'
    , PropertiesDelete'

    -- * Request Lenses
    , pddQuotaUser
    , pddPrettyPrint
    , pddPropertyKey
    , pddUserIp
    , pddVisibility
    , pddKey
    , pddFileId
    , pddOauthToken
    , pddFields
    , pddAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.properties.delete which the
-- 'PropertiesDelete'' request conforms to.
type PropertiesDeleteAPI =
     "files" :>
       Capture "fileId" Text :>
         "properties" :>
           Capture "propertyKey" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "visibility" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a property.
--
-- /See:/ 'propertiesDelete'' smart constructor.
data PropertiesDelete' = PropertiesDelete'
    { _pddQuotaUser   :: !(Maybe Text)
    , _pddPrettyPrint :: !Bool
    , _pddPropertyKey :: !Text
    , _pddUserIp      :: !(Maybe Text)
    , _pddVisibility  :: !Text
    , _pddKey         :: !(Maybe Text)
    , _pddFileId      :: !Text
    , _pddOauthToken  :: !(Maybe Text)
    , _pddFields      :: !(Maybe Text)
    , _pddAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddQuotaUser'
--
-- * 'pddPrettyPrint'
--
-- * 'pddPropertyKey'
--
-- * 'pddUserIp'
--
-- * 'pddVisibility'
--
-- * 'pddKey'
--
-- * 'pddFileId'
--
-- * 'pddOauthToken'
--
-- * 'pddFields'
--
-- * 'pddAlt'
propertiesDelete'
    :: Text -- ^ 'propertyKey'
    -> Text -- ^ 'fileId'
    -> PropertiesDelete'
propertiesDelete' pPddPropertyKey_ pPddFileId_ =
    PropertiesDelete'
    { _pddQuotaUser = Nothing
    , _pddPrettyPrint = True
    , _pddPropertyKey = pPddPropertyKey_
    , _pddUserIp = Nothing
    , _pddVisibility = "private"
    , _pddKey = Nothing
    , _pddFileId = pPddFileId_
    , _pddOauthToken = Nothing
    , _pddFields = Nothing
    , _pddAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pddQuotaUser :: Lens' PropertiesDelete' (Maybe Text)
pddQuotaUser
  = lens _pddQuotaUser (\ s a -> s{_pddQuotaUser = a})

-- | Returns response with indentations and line breaks.
pddPrettyPrint :: Lens' PropertiesDelete' Bool
pddPrettyPrint
  = lens _pddPrettyPrint
      (\ s a -> s{_pddPrettyPrint = a})

-- | The key of the property.
pddPropertyKey :: Lens' PropertiesDelete' Text
pddPropertyKey
  = lens _pddPropertyKey
      (\ s a -> s{_pddPropertyKey = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pddUserIp :: Lens' PropertiesDelete' (Maybe Text)
pddUserIp
  = lens _pddUserIp (\ s a -> s{_pddUserIp = a})

-- | The visibility of the property.
pddVisibility :: Lens' PropertiesDelete' Text
pddVisibility
  = lens _pddVisibility
      (\ s a -> s{_pddVisibility = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pddKey :: Lens' PropertiesDelete' (Maybe Text)
pddKey = lens _pddKey (\ s a -> s{_pddKey = a})

-- | The ID of the file.
pddFileId :: Lens' PropertiesDelete' Text
pddFileId
  = lens _pddFileId (\ s a -> s{_pddFileId = a})

-- | OAuth 2.0 token for the current user.
pddOauthToken :: Lens' PropertiesDelete' (Maybe Text)
pddOauthToken
  = lens _pddOauthToken
      (\ s a -> s{_pddOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pddFields :: Lens' PropertiesDelete' (Maybe Text)
pddFields
  = lens _pddFields (\ s a -> s{_pddFields = a})

-- | Data format for the response.
pddAlt :: Lens' PropertiesDelete' Alt
pddAlt = lens _pddAlt (\ s a -> s{_pddAlt = a})

instance GoogleRequest PropertiesDelete' where
        type Rs PropertiesDelete' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PropertiesDelete'{..}
          = go _pddQuotaUser (Just _pddPrettyPrint)
              _pddPropertyKey
              _pddUserIp
              (Just _pddVisibility)
              _pddKey
              _pddFileId
              _pddOauthToken
              _pddFields
              (Just _pddAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PropertiesDeleteAPI)
                      r
                      u
