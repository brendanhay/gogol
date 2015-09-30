{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Doubleclickbidmanager.Lineitems.Uploadlineitems
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Uploads line items in CSV format.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @DoubleclickbidmanagerLineitemsUploadlineitems@.
module Doubleclickbidmanager.Lineitems.Uploadlineitems
    (
    -- * REST Resource
      LineitemsUploadlineitemsAPI

    -- * Creating a Request
    , lineitemsUploadlineitems
    , LineitemsUploadlineitems

    -- * Request Lenses
    , luQuotaUser
    , luPrettyPrint
    , luUserIp
    , luKey
    , luOauthToken
    , luFields
    , luAlt
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleclickbidmanagerLineitemsUploadlineitems@ which the
-- 'LineitemsUploadlineitems' request conforms to.
type LineitemsUploadlineitemsAPI =
     "lineitems" :>
       "uploadlineitems" :>
         Post '[JSON] UploadLineItemsResponse

-- | Uploads line items in CSV format.
--
-- /See:/ 'lineitemsUploadlineitems' smart constructor.
data LineitemsUploadlineitems = LineitemsUploadlineitems
    { _luQuotaUser   :: !(Maybe Text)
    , _luPrettyPrint :: !Bool
    , _luUserIp      :: !(Maybe Text)
    , _luKey         :: !(Maybe Text)
    , _luOauthToken  :: !(Maybe Text)
    , _luFields      :: !(Maybe Text)
    , _luAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LineitemsUploadlineitems'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luQuotaUser'
--
-- * 'luPrettyPrint'
--
-- * 'luUserIp'
--
-- * 'luKey'
--
-- * 'luOauthToken'
--
-- * 'luFields'
--
-- * 'luAlt'
lineitemsUploadlineitems
    :: LineitemsUploadlineitems
lineitemsUploadlineitems =
    LineitemsUploadlineitems
    { _luQuotaUser = Nothing
    , _luPrettyPrint = True
    , _luUserIp = Nothing
    , _luKey = Nothing
    , _luOauthToken = Nothing
    , _luFields = Nothing
    , _luAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
luQuotaUser :: Lens' LineitemsUploadlineitems' (Maybe Text)
luQuotaUser
  = lens _luQuotaUser (\ s a -> s{_luQuotaUser = a})

-- | Returns response with indentations and line breaks.
luPrettyPrint :: Lens' LineitemsUploadlineitems' Bool
luPrettyPrint
  = lens _luPrettyPrint
      (\ s a -> s{_luPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
luUserIp :: Lens' LineitemsUploadlineitems' (Maybe Text)
luUserIp = lens _luUserIp (\ s a -> s{_luUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
luKey :: Lens' LineitemsUploadlineitems' (Maybe Text)
luKey = lens _luKey (\ s a -> s{_luKey = a})

-- | OAuth 2.0 token for the current user.
luOauthToken :: Lens' LineitemsUploadlineitems' (Maybe Text)
luOauthToken
  = lens _luOauthToken (\ s a -> s{_luOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
luFields :: Lens' LineitemsUploadlineitems' (Maybe Text)
luFields = lens _luFields (\ s a -> s{_luFields = a})

-- | Data format for the response.
luAlt :: Lens' LineitemsUploadlineitems' Text
luAlt = lens _luAlt (\ s a -> s{_luAlt = a})

instance GoogleRequest LineitemsUploadlineitems'
         where
        type Rs LineitemsUploadlineitems' =
             UploadLineItemsResponse
        request = requestWithRoute defReq doubleClickBidsURL
        requestWithRoute r u LineitemsUploadlineitems{..}
          = go _luQuotaUser _luPrettyPrint _luUserIp _luKey
              _luOauthToken
              _luFields
              _luAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LineitemsUploadlineitemsAPI)
                      r
                      u
