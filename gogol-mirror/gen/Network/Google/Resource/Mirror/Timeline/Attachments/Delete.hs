{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mirror.Timeline.Attachments.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an attachment from a timeline item.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorTimelineAttachmentsDelete@.
module Mirror.Timeline.Attachments.Delete
    (
    -- * REST Resource
      TimelineAttachmentsDeleteAPI

    -- * Creating a Request
    , timelineAttachmentsDelete
    , TimelineAttachmentsDelete

    -- * Request Lenses
    , tadQuotaUser
    , tadPrettyPrint
    , tadUserIp
    , tadItemId
    , tadAttachmentId
    , tadKey
    , tadOauthToken
    , tadFields
    , tadAlt
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorTimelineAttachmentsDelete@ which the
-- 'TimelineAttachmentsDelete' request conforms to.
type TimelineAttachmentsDeleteAPI =
     "timeline" :>
       Capture "itemId" Text :>
         "attachments" :>
           Capture "attachmentId" Text :> Delete '[JSON] ()

-- | Deletes an attachment from a timeline item.
--
-- /See:/ 'timelineAttachmentsDelete' smart constructor.
data TimelineAttachmentsDelete = TimelineAttachmentsDelete
    { _tadQuotaUser    :: !(Maybe Text)
    , _tadPrettyPrint  :: !Bool
    , _tadUserIp       :: !(Maybe Text)
    , _tadItemId       :: !Text
    , _tadAttachmentId :: !Text
    , _tadKey          :: !(Maybe Text)
    , _tadOauthToken   :: !(Maybe Text)
    , _tadFields       :: !(Maybe Text)
    , _tadAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimelineAttachmentsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tadQuotaUser'
--
-- * 'tadPrettyPrint'
--
-- * 'tadUserIp'
--
-- * 'tadItemId'
--
-- * 'tadAttachmentId'
--
-- * 'tadKey'
--
-- * 'tadOauthToken'
--
-- * 'tadFields'
--
-- * 'tadAlt'
timelineAttachmentsDelete
    :: Text -- ^ 'itemId'
    -> Text -- ^ 'attachmentId'
    -> TimelineAttachmentsDelete
timelineAttachmentsDelete pTadItemId_ pTadAttachmentId_ =
    TimelineAttachmentsDelete
    { _tadQuotaUser = Nothing
    , _tadPrettyPrint = True
    , _tadUserIp = Nothing
    , _tadItemId = pTadItemId_
    , _tadAttachmentId = pTadAttachmentId_
    , _tadKey = Nothing
    , _tadOauthToken = Nothing
    , _tadFields = Nothing
    , _tadAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tadQuotaUser :: Lens' TimelineAttachmentsDelete' (Maybe Text)
tadQuotaUser
  = lens _tadQuotaUser (\ s a -> s{_tadQuotaUser = a})

-- | Returns response with indentations and line breaks.
tadPrettyPrint :: Lens' TimelineAttachmentsDelete' Bool
tadPrettyPrint
  = lens _tadPrettyPrint
      (\ s a -> s{_tadPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tadUserIp :: Lens' TimelineAttachmentsDelete' (Maybe Text)
tadUserIp
  = lens _tadUserIp (\ s a -> s{_tadUserIp = a})

-- | The ID of the timeline item the attachment belongs to.
tadItemId :: Lens' TimelineAttachmentsDelete' Text
tadItemId
  = lens _tadItemId (\ s a -> s{_tadItemId = a})

-- | The ID of the attachment.
tadAttachmentId :: Lens' TimelineAttachmentsDelete' Text
tadAttachmentId
  = lens _tadAttachmentId
      (\ s a -> s{_tadAttachmentId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tadKey :: Lens' TimelineAttachmentsDelete' (Maybe Text)
tadKey = lens _tadKey (\ s a -> s{_tadKey = a})

-- | OAuth 2.0 token for the current user.
tadOauthToken :: Lens' TimelineAttachmentsDelete' (Maybe Text)
tadOauthToken
  = lens _tadOauthToken
      (\ s a -> s{_tadOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tadFields :: Lens' TimelineAttachmentsDelete' (Maybe Text)
tadFields
  = lens _tadFields (\ s a -> s{_tadFields = a})

-- | Data format for the response.
tadAlt :: Lens' TimelineAttachmentsDelete' Text
tadAlt = lens _tadAlt (\ s a -> s{_tadAlt = a})

instance GoogleRequest TimelineAttachmentsDelete'
         where
        type Rs TimelineAttachmentsDelete' = ()
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u TimelineAttachmentsDelete{..}
          = go _tadQuotaUser _tadPrettyPrint _tadUserIp
              _tadItemId
              _tadAttachmentId
              _tadKey
              _tadOauthToken
              _tadFields
              _tadAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TimelineAttachmentsDeleteAPI)
                      r
                      u
